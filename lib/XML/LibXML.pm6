use NativeCall;
use XML::LibXML::XMLDoc;

class XML::LibXML;
sub xmlReadFile(Str)                    
  returns OpaquePointer 
  is native('Libxml2') 
  { ... };
  
sub xmlFreeDoc(OpaquePointer)           
  is native('Libxml2')                       
  { ... };

sub xmlDocGetRootElement(OpaquePointer) 
  returns XML::LibXML::XMLDoc 
  is native('Libxml2') 
  { ... };

has OpaquePointer $!doc;

method read(Str $filename) {
  $!doc = xmlReadFile($filename);
}

method root_node() {
  'n'.say;
  my $node = xmlDocGetRootElement($!doc);
  'h'.say;
  my $rd = $node.name;
  'r'.say;
  $rd.perl.say;
  return $rd;
#  return xmlTextReaderConstName(xmlDocGetRootElement($!doc));
}

method free() {
  xmlFreeDoc($!doc);
}

method debug(OpaquePointer $node?) {
  my $cnode;
}
