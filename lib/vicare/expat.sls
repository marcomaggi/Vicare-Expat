;;; -*- coding: utf-8-unix -*-
;;;
;;;Part of: Vicare/Expat
;;;Contents: Expat binding backend
;;;Date: Sat Jan 21, 2012
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2012 Marco Maggi <marco.maggi-ipsu@poste.it>
;;;
;;;This program is free software:  you can redistribute it and/or modify
;;;it under the terms of the  GNU General Public License as published by
;;;the Free Software Foundation, either version 3 of the License, or (at
;;;your option) any later version.
;;;
;;;This program is  distributed in the hope that it  will be useful, but
;;;WITHOUT  ANY   WARRANTY;  without   even  the  implied   warranty  of
;;;MERCHANTABILITY  or FITNESS FOR  A PARTICULAR  PURPOSE.  See  the GNU
;;;General Public License for more details.
;;;
;;;You should  have received  a copy of  the GNU General  Public License
;;;along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;


#!r6rs
(library (vicare expat)
  (export
    XML_SetElementDeclHandler
    XML_SetAttlistDeclHandler
    XML_SetXmlDeclHandler
    XML_ParserCreate
    XML_ParserCreateNS
    XML_ParserCreate_MM
    XML_ParserReset
    XML_SetEntityDeclHandler
    XML_SetElementHandler
    XML_SetStartElementHandler
    XML_SetEndElementHandler
    XML_SetCharacterDataHandler
    XML_SetProcessingInstructionHandler
    XML_SetCommentHandler
    XML_SetCdataSectionHandler
    XML_SetStartCdataSectionHandler
    XML_SetEndCdataSectionHandler
    XML_SetDefaultHandler
    XML_SetDefaultHandlerExpand
    XML_SetDoctypeDeclHandler
    XML_SetStartDoctypeDeclHandler
    XML_SetEndDoctypeDeclHandler
    XML_SetUnparsedEntityDeclHandler
    XML_SetNotationDeclHandler
    XML_SetNamespaceDeclHandler
    XML_SetStartNamespaceDeclHandler
    XML_SetEndNamespaceDeclHandler
    XML_SetNotStandaloneHandler
    XML_SetExternalEntityRefHandler
    XML_SetExternalEntityRefHandlerArg
    XML_SetSkippedEntityHandler
    XML_SetUnknownEncodingHandler
    XML_DefaultCurrent
    XML_SetReturnNSTriplet
    XML_SetUserData
    XML_SetEncoding
    XML_UseParserAsHandlerArg
    XML_UseForeignDTD
    XML_SetBase
    XML_GetBase
    XML_GetSpecifiedAttributeCount
    XML_GetIdAttributeIndex
    XML_Parse
    XML_GetBuffer
    XML_ParseBuffer
    XML_StopParser
    XML_ResumeParser
    XML_GetParsingStatus
    XML_ExternalEntityParserCreate
    XML_SetParamEntityParsing
    XML_GetErrorCode
    XML_GetCurrentLineNumber
    XML_GetCurrentColumnNumber
    XML_GetCurrentByteIndex
    XML_GetCurrentByteCount
    XML_GetInputContext
    XML_FreeContentModel
    XML_MemMalloc
    XML_MemRealloc
    XML_MemFree
    XML_ParserFree
    XML_ErrorString
    XML_ExpatVersion
    XML_GetFeatureList

    ;; Preprocessor symbols: XML_Bool
    XML_TRUE
    XML_FALSE

    ;; enum XML_Status
    XML_STATUS_ERROR
    XML_STATUS_OK
    XML_STATUS_SUSPENDED

    ;; enum XML_Error
    XML_ERROR_NONE
    XML_ERROR_NO_MEMORY
    XML_ERROR_SYNTAX
    XML_ERROR_NO_ELEMENTS
    XML_ERROR_INVALID_TOKEN
    XML_ERROR_UNCLOSED_TOKEN
    XML_ERROR_PARTIAL_CHAR
    XML_ERROR_TAG_MISMATCH
    XML_ERROR_DUPLICATE_ATTRIBUTE
    XML_ERROR_JUNK_AFTER_DOC_ELEMENT
    XML_ERROR_PARAM_ENTITY_REF
    XML_ERROR_UNDEFINED_ENTITY
    XML_ERROR_RECURSIVE_ENTITY_REF
    XML_ERROR_ASYNC_ENTITY
    XML_ERROR_BAD_CHAR_REF
    XML_ERROR_BINARY_ENTITY_REF
    XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF
    XML_ERROR_MISPLACED_XML_PI
    XML_ERROR_UNKNOWN_ENCODING
    XML_ERROR_INCORRECT_ENCODING
    XML_ERROR_UNCLOSED_CDATA_SECTION
    XML_ERROR_EXTERNAL_ENTITY_HANDLING
    XML_ERROR_NOT_STANDALONE
    XML_ERROR_UNEXPECTED_STATE
    XML_ERROR_ENTITY_DECLARED_IN_PE
    XML_ERROR_FEATURE_REQUIRES_XML_DTD
    XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING
    XML_ERROR_UNBOUND_PREFIX
    XML_ERROR_UNDECLARING_PREFIX
    XML_ERROR_INCOMPLETE_PE
    XML_ERROR_XML_DECL
    XML_ERROR_TEXT_DECL
    XML_ERROR_PUBLICID
    XML_ERROR_SUSPENDED
    XML_ERROR_NOT_SUSPENDED
    XML_ERROR_ABORTED
    XML_ERROR_FINISHED
    XML_ERROR_SUSPEND_PE
    XML_ERROR_RESERVED_PREFIX_XML
    XML_ERROR_RESERVED_PREFIX_XMLNS
    XML_ERROR_RESERVED_NAMESPACE_URI

    ;; enum XML_Content_Type
    XML_CTYPE_EMPTY
    XML_CTYPE_ANY
    XML_CTYPE_MIXED
    XML_CTYPE_NAME
    XML_CTYPE_CHOICE
    XML_CTYPE_SEQ

    ;; enum XML_Content_Quant
    XML_CQUANT_NONE
    XML_CQUANT_OPT
    XML_CQUANT_REP
    XML_CQUANT_PLUS

    ;; enum XML_Parsing
    XML_INITIALIZED
    XML_PARSING
    XML_FINISHED
    XML_SUSPENDED

    ;; enum XML_ParamEntityParsing
    XML_PARAM_ENTITY_PARSING_NEVER
    XML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE
    XML_PARAM_ENTITY_PARSING_ALWAYS

    ;; Preprocessor symbols: version numbers
    XML_MAJOR_VERSION
    XML_MINOR_VERSION
    XML_MICRO_VERSION

    ;; enum XML_FeatureEnum
    XML_FEATURE_END
    XML_FEATURE_UNICODE
    XML_FEATURE_UNICODE_WCHAR_T
    XML_FEATURE_DTD
    XML_FEATURE_CONTEXT_BYTES
    XML_FEATURE_MIN_SIZE
    XML_FEATURE_SIZEOF_XML_CHAR
    XML_FEATURE_SIZEOF_XML_LCHAR
    XML_FEATURE_NS
    XML_FEATURE_LARGE_SIZE)
  (import (vicare)
    (vicare expat constants))


;;;; code


    XML_SetElementDeclHandler
    XML_SetAttlistDeclHandler
    XML_SetXmlDeclHandler
    XML_ParserCreate
    XML_ParserCreateNS
    XML_ParserCreate_MM
    XML_ParserReset
    XML_SetEntityDeclHandler
    XML_SetElementHandler
    XML_SetStartElementHandler
    XML_SetEndElementHandler
    XML_SetCharacterDataHandler
    XML_SetProcessingInstructionHandler
    XML_SetCommentHandler
    XML_SetCdataSectionHandler
    XML_SetStartCdataSectionHandler
    XML_SetEndCdataSectionHandler
    XML_SetDefaultHandler
    XML_SetDefaultHandlerExpand
    XML_SetDoctypeDeclHandler
    XML_SetStartDoctypeDeclHandler
    XML_SetEndDoctypeDeclHandler
    XML_SetUnparsedEntityDeclHandler
    XML_SetNotationDeclHandler
    XML_SetNamespaceDeclHandler
    XML_SetStartNamespaceDeclHandler
    XML_SetEndNamespaceDeclHandler
    XML_SetNotStandaloneHandler
    XML_SetExternalEntityRefHandler
    XML_SetExternalEntityRefHandlerArg
    XML_SetSkippedEntityHandler
    XML_SetUnknownEncodingHandler
    XML_DefaultCurrent
    XML_SetReturnNSTriplet
    XML_SetUserData
    XML_SetEncoding
    XML_UseParserAsHandlerArg
    XML_UseForeignDTD
    XML_SetBase
    XML_GetBase
    XML_GetSpecifiedAttributeCount
    XML_GetIdAttributeIndex
    XML_Parse
    XML_GetBuffer
    XML_ParseBuffer
    XML_StopParser
    XML_ResumeParser
    XML_GetParsingStatus
    XML_ExternalEntityParserCreate
    XML_SetParamEntityParsing
    XML_GetErrorCode
    XML_GetCurrentLineNumber
    XML_GetCurrentColumnNumber
    XML_GetCurrentByteIndex
    XML_GetCurrentByteCount
    XML_GetInputContext
    XML_FreeContentModel
    XML_MemMalloc
    XML_MemRealloc
    XML_MemFree
    XML_ParserFree
    XML_ErrorString
    XML_ExpatVersion
    XML_GetFeatureList


;;;; done

)

;;; end of file
