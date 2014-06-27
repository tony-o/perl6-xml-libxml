use NativeCall;

#struct _xmlNode * children  : the document tree
#struct _xmlNode * last  : last child link
#struct _xmlNode * parent  : child->parent link
#struct _xmlNode * next  : next sibling link
#struct _xmlNode * prev  : previous sibling link
#struct _xmlDoc *  doc : autoreference to itself End of common p
#int compression : level of zlib compression
#int standalone  : standalone document (no external refs)
#struct _xmlDtd *  intSubset : the document internal subset
#struct _xmlDtd *  extSubset : the document external subset
#struct _xmlNs * oldNs : Global namespace, the old way
#const xmlChar * version : the XML version string
#const xmlChar * encoding  : external initial encoding, if any
#void *  ids : Hash table for ID attributes if any
#void *  refs  : Hash table for IDREFs attributes if any
#const xmlChar * URL : The URI for that document
#int charset : encoding of the in-memory content actua
#struct _xmlDict * dict  : dict used to allocate names or NULL
#void *  psvi  : for type/PSVI informations
#int parseFlags  : set of xmlParserOption used to parse th
#int properties  : set of xmlDocProperties for this docume


class XML::LibXML::XMLDoc is repr('CStruct') { 
  has Str $.name;
  has OpaquePointer $.children;
  has OpaquePointer $.last;
  has OpaquePointer $.parent;
  has OpaquePointer $.next;  
  has OpaquePointer $.prev;  
  has OpaquePointer $.self;  
}
