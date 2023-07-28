from xml.dom import minidom
from pathlib import Path

def resdXMLAsPerNode(your_test_param):

    first_parse_xml=minidom.parse("C:/Users/158410/PycharmProjects/main/python_file.xml")
    data=first_parse_xml.getElementsByTagName(your_test_param)[0]
    return data.firstChild.data

def validatePrimaryMenusByXpath(linkName):
    return "(//a[contains(.,'"+linkName+"')])[1]"