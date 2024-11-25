from rest_framework.response import Response
from .models import *
from .serializers import *
from rest_framework.decorators import api_view

# Create your views here.

@api_view(['GET'])
def getTemplate(request, id):
    template = Template.objects.get(pk= id)
    template_serializer = TemplateSerializer(template, many=False)

    return Response(template_serializer.data)