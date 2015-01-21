.class public abstract Lorg/kxml2/wap/syncml/SyncML;
.super Ljava/lang/Object;
.source "SyncML.java"


# static fields
.field public static final TAG_TABLE_0:[Ljava/lang/String;

.field public static final TAG_TABLE_1:[Ljava/lang/String;

.field public static final TAG_TABLE_2_DM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const-string v1, "Add"

    aput-object v1, v0, v3

    .line 46
    const-string v1, "Alert"

    aput-object v1, v0, v4

    .line 47
    const-string v1, "Archive"

    aput-object v1, v0, v5

    .line 48
    const-string v1, "Atomic"

    aput-object v1, v0, v6

    .line 49
    const-string v1, "Chal"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 50
    const-string v2, "Cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 51
    const-string v2, "CmdID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 52
    const-string v2, "CmdRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 53
    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 54
    const-string v2, "Cred"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 55
    const-string v2, "Data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 56
    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 57
    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 58
    const-string v2, "Final"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 59
    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 60
    const-string v2, "Item"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 61
    const-string v2, "Lang"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 62
    const-string v2, "LocName"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 63
    const-string v2, "LocURI"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 64
    const-string v2, "Map"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 65
    const-string v2, "MapItem"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 66
    const-string v2, "Meta"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 67
    const-string v2, "MsgID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 68
    const-string v2, "MsgRef"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 69
    const-string v2, "NoResp"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 70
    const-string v2, "NoResults"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 71
    const-string v2, "Put"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 72
    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 73
    const-string v2, "RespURI"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 74
    const-string v2, "Results"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 75
    const-string v2, "Search"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 76
    const-string v2, "Sequence"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 77
    const-string v2, "SessionID"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 78
    const-string v2, "SftDel"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 79
    const-string v2, "Source"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 80
    const-string v2, "SourceRef"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 81
    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 82
    const-string v2, "Sync"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 83
    const-string v2, "SyncBody"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 84
    const-string v2, "SyncHdr"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 85
    const-string v2, "SyncML"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 86
    const-string v2, "Target"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 87
    const-string v2, "TargetRef"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 88
    const-string v2, "Reserved for future use"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 89
    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 90
    const-string v2, "VerProto"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 91
    const-string v2, "NumberOfChanged"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 92
    const-string v2, "MoreData"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 93
    const-string v2, "Field"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 94
    const-string v2, "Filter"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 95
    const-string v2, "Record"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 96
    const-string v2, "FilterType"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 97
    const-string v2, "SourceParent"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 98
    const-string v2, "TargetParent"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 99
    const-string v2, "Move"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 100
    const-string v2, "Correlator"

    aput-object v2, v0, v1

    .line 41
    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    const-string v1, "Anchor"

    aput-object v1, v0, v3

    .line 108
    const-string v1, "EMI"

    aput-object v1, v0, v4

    .line 109
    const-string v1, "Format"

    aput-object v1, v0, v5

    .line 110
    const-string v1, "FreeID"

    aput-object v1, v0, v6

    .line 111
    const-string v1, "FreeMem"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 112
    const-string v2, "Last"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 113
    const-string v2, "Mark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 114
    const-string v2, "MaxMsgSize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 115
    const-string v2, "Mem"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 116
    const-string v2, "MetInf"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 117
    const-string v2, "Next"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 118
    const-string v2, "NextNonce"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 119
    const-string v2, "SharedMem"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 120
    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 121
    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 122
    const-string v2, "Version"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 123
    const-string v2, "MaxObjSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 124
    const-string v2, "FieldLevel"

    aput-object v2, v0, v1

    .line 103
    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    .line 128
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    .line 132
    const-string v1, "AccessType"

    aput-object v1, v0, v3

    .line 133
    const-string v1, "ACL"

    aput-object v1, v0, v4

    .line 134
    const-string v1, "Add"

    aput-object v1, v0, v5

    .line 135
    const-string v1, "b64"

    aput-object v1, v0, v6

    .line 136
    const-string v1, "bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 137
    const-string v2, "bool"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 138
    const-string v2, "chr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 139
    const-string v2, "CaseSense"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 140
    const-string v2, "CIS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 141
    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 142
    const-string v2, "CS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 143
    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 144
    const-string v2, "DDFName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 145
    const-string v2, "DefaultValue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 146
    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 147
    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 148
    const-string v2, "DDFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 149
    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 150
    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 151
    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 152
    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 153
    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 154
    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 155
    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 156
    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 157
    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 158
    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 159
    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 160
    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 161
    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 162
    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 163
    const-string v2, "Node"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 164
    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 165
    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 166
    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 167
    const-string v2, "Occurence"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 168
    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 169
    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 170
    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 171
    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 172
    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 173
    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 174
    const-string v2, "RTProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 175
    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 176
    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 177
    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 178
    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 179
    const-string v2, "TStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 180
    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 181
    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 182
    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 183
    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 184
    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 185
    const-string v2, "ZeroOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 186
    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 187
    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    .line 128
    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDMParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    .line 29
    .local v0, p:Lorg/kxml2/wap/WbxmlParser;
    const/4 v1, 0x2

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method public static createDMSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createSerializer()Lorg/kxml2/wap/WbxmlSerializer;

    move-result-object v0

    .line 35
    .local v0, s:Lorg/kxml2/wap/WbxmlSerializer;
    const/4 v1, 0x2

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 12
    .local v0, p:Lorg/kxml2/wap/WbxmlParser;
    const/4 v1, 0x0

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 13
    const/4 v1, 0x1

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 14
    return-object v0
.end method

.method public static createSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lorg/kxml2/wap/WbxmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlSerializer;-><init>()V

    .line 19
    .local v0, s:Lorg/kxml2/wap/WbxmlSerializer;
    const/4 v1, 0x0

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x1

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 21
    return-object v0
.end method
