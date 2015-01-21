.class Lcom/baidu/pcs/BaiduPCSActionBase;
.super Ljava/lang/Object;
.source "BaiduPCSActionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$baidu$pcs$BaiduPCSActionInfo$PCSMetaResponse$MediaType:[I = null

.field static final Command_File:Ljava/lang/String; = "file"

.field static final Command_Service:Ljava/lang/String; = "services"

.field static final Command_Stream:Ljava/lang/String; = "stream"

.field static final Command_Thumbnail:Ljava/lang/String; = "thumbnail"

.field static final Key_AccessToken:Ljava/lang/String; = "access_token"

.field static final Key_BlockList:Ljava/lang/String; = "block_list"

.field private static final Key_CTime:Ljava/lang/String; = "ctime"

.field static final Key_Content_Md5:Ljava/lang/String; = "content-md5"

.field static final Key_ErrorCode:Ljava/lang/String; = "error_code"

.field static final Key_ErrorMessage:Ljava/lang/String; = "error_msg"

.field private static final Key_Extra:Ljava/lang/String; = "extra"

.field static final Key_Files_List:Ljava/lang/String; = "list"

.field private static final Key_Files_Path:Ljava/lang/String; = "path"

.field static final Key_From:Ljava/lang/String; = "from"

.field private static final Key_FsId:Ljava/lang/String; = "fsid"

.field private static final Key_HasSubFolder:Ljava/lang/String; = "ifhassubdir"

.field private static final Key_IsDir:Ljava/lang/String; = "isdir"

.field static final Key_MD5:Ljava/lang/String; = "md5"

.field private static final Key_MTime:Ljava/lang/String; = "mtime"

.field static final Key_Method:Ljava/lang/String; = "method"

.field static final Key_Param:Ljava/lang/String; = "param"

.field static final Key_Path:Ljava/lang/String; = "path"

.field static final Key_Query_Result:Ljava/lang/String; = "result"

.field static final Key_Request_Id:Ljava/lang/String; = "request_id"

.field private static final Key_Size:Ljava/lang/String; = "size"

.field static final Key_Slice_Md5:Ljava/lang/String; = "slice-md5"

.field static final Key_Task_Id:Ljava/lang/String; = "task_id"

.field static final Key_Task_Info_List:Ljava/lang/String; = "task_info"

.field static final Key_to:Ljava/lang/String; = "to"

.field static final Max_Retries:I = 0x6

.field static final PCSRequestUrl:Ljava/lang/String; = "https://pcs.baidu.com/rest/2.0/pcs"

.field static final Value_File_Length:Ljava/lang/String; = "content-length"

.field static final Value_Total_Task:Ljava/lang/String; = "total"


# instance fields
.field protected Encoding_UTF8:Ljava/lang/String;

.field public Key_AlbumArt:Ljava/lang/String;

.field private Key_AlbumArtist:Ljava/lang/String;

.field private Key_AlbumTitle:Ljava/lang/String;

.field private Key_ArtistName:Ljava/lang/String;

.field private Key_Callback:Ljava/lang/String;

.field private Key_Cateogry:Ljava/lang/String;

.field private Key_Compilation:Ljava/lang/String;

.field private Key_Composer:Ljava/lang/String;

.field private Key_Create_Time:Ljava/lang/String;

.field private Key_Cursor:Ljava/lang/String;

.field private Key_Date:Ljava/lang/String;

.field private Key_DateTaken:Ljava/lang/String;

.field private Key_Duration:Ljava/lang/String;

.field private Key_Entries:Ljava/lang/String;

.field private Key_File_Size:Ljava/lang/String;

.field private Key_Finished_Size:Ljava/lang/String;

.field private Key_Finished_Time:Ljava/lang/String;

.field private Key_Genre:Ljava/lang/String;

.field private Key_HasMore:Ljava/lang/String;

.field private Key_HasThumbnail:Ljava/lang/String;

.field private Key_Latitude:Ljava/lang/String;

.field private Key_Longitude:Ljava/lang/String;

.field private Key_MediaType:Ljava/lang/String;

.field private Key_Rate_Limit:Ljava/lang/String;

.field private Key_Reset:Ljava/lang/String;

.field private Key_Resolution:Ljava/lang/String;

.field private Key_Save_Path:Ljava/lang/String;

.field private Key_Source_Url:Ljava/lang/String;

.field private Key_Start_Time:Ljava/lang/String;

.field private Key_Status:Ljava/lang/String;

.field private Key_Timeout:Ljava/lang/String;

.field private Key_TrackNumber:Ljava/lang/String;

.field private Key_TrackTitle:Ljava/lang/String;

.field private Key_isDeleted:Ljava/lang/String;

.field private Value_Media_Audio:Ljava/lang/String;

.field private Value_Media_Image:Ljava/lang/String;

.field private Value_Media_Video:Ljava/lang/String;

.field private mbAccessToken:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$baidu$pcs$BaiduPCSActionInfo$PCSMetaResponse$MediaType()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->$SWITCH_TABLE$com$baidu$pcs$BaiduPCSActionInfo$PCSMetaResponse$MediaType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->values()[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Audio:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Image:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Video:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->$SWITCH_TABLE$com$baidu$pcs$BaiduPCSActionInfo$PCSMetaResponse$MediaType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    const-string v0, "artistName"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_ArtistName:Ljava/lang/String;

    .line 1188
    const-string v0, "albumTitle"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumTitle:Ljava/lang/String;

    .line 1191
    const-string v0, "albumArtist"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArtist:Ljava/lang/String;

    .line 1194
    const-string v0, "albumArt"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArt:Ljava/lang/String;

    .line 1197
    const-string v0, "composer"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Composer:Ljava/lang/String;

    .line 1200
    const-string v0, "trackTitle"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackTitle:Ljava/lang/String;

    .line 1203
    const-string v0, "trackNumber"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackNumber:Ljava/lang/String;

    .line 1206
    const-string v0, "dateTaken"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    .line 1209
    const-string v0, "compilation"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Compilation:Ljava/lang/String;

    .line 1212
    const-string v0, "date"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Date:Ljava/lang/String;

    .line 1215
    const-string v0, "genre"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Genre:Ljava/lang/String;

    .line 1218
    const-string v0, "cateogry"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cateogry:Ljava/lang/String;

    .line 1221
    const-string v0, "duration"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    .line 1224
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    .line 1227
    const-string v0, "latitude"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Latitude:Ljava/lang/String;

    .line 1230
    const-string v0, "longitude"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Longitude:Ljava/lang/String;

    .line 1233
    const-string v0, "entries"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Entries:Ljava/lang/String;

    .line 1236
    const-string v0, "has_more"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasMore:Ljava/lang/String;

    .line 1239
    const-string v0, "reset"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Reset:Ljava/lang/String;

    .line 1242
    const-string v0, "cursor"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cursor:Ljava/lang/String;

    .line 1245
    const-string v0, "isdelete"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_isDeleted:Ljava/lang/String;

    .line 1248
    const-string v0, "mediaType"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_MediaType:Ljava/lang/String;

    .line 1251
    const-string v0, "hasThumbnail"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    .line 1254
    const-string v0, "audio"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Audio:Ljava/lang/String;

    .line 1257
    const-string v0, "video"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Video:Ljava/lang/String;

    .line 1260
    const-string v0, "image"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Image:Ljava/lang/String;

    .line 1263
    const-string v0, "utf8"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Encoding_UTF8:Ljava/lang/String;

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mbAccessToken:Ljava/lang/String;

    .line 1281
    const-string v0, "source_url"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    .line 1284
    const-string v0, "save_path"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    .line 1287
    const-string v0, "rate_limit"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    .line 1290
    const-string v0, "timeout"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    .line 1293
    const-string v0, "callback"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    .line 1296
    const-string v0, "status"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    .line 1299
    const-string v0, "create_time"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    .line 1302
    const-string v0, "start_time"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Start_Time:Ljava/lang/String;

    .line 1305
    const-string v0, "finished_size"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Size:Ljava/lang/String;

    .line 1308
    const-string v0, "file_size"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_File_Size:Ljava/lang/String;

    .line 1311
    const-string v0, "finish_time"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Time:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected buildBodyParamsWithFromTo(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v1, bodyParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 938
    .local v0, array:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 948
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 949
    .local v3, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    const-string v8, "list"

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 952
    .local v6, nodelist:Lorg/json/JSONObject;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "param"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    return-object v1

    .line 939
    .end local v3           #list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    .end local v6           #nodelist:Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 940
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    .line 941
    .local v7, tmp:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    const-string v8, "from"

    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v8, "to"

    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 945
    .local v5, node:Lorg/json/JSONObject;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected buildBodyParamsWithList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter "paramKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    .local p1, files:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v1, bodyParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 912
    .local v0, array:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 920
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 921
    .local v3, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    const-string v7, "list"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 924
    .local v6, nodelist:Lorg/json/JSONObject;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p2, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    return-object v1

    .line 913
    .end local v3           #list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    .end local v6           #nodelist:Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 914
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "path"

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 917
    .local v5, node:Lorg/json/JSONObject;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected buildParams(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, urlParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 102
    .local v3, ret:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 105
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf8"

    invoke-direct {v2, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 106
    .local v2, paramsEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 119
    .end local v2           #paramsEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mbAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method protected parseCloudDownloadTaskInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    .locals 3
    .parameter "jo"

    .prologue
    .line 248
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;-><init>()V

    .line 250
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    if-eqz p1, :cond_8

    .line 253
    :try_start_0
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    .line 256
    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->queryResult:I

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->sourceUrl:Ljava/lang/String;

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->rateLimit:J

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->timeout:J

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 272
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->callback:Ljava/lang/String;

    .line 274
    :cond_6
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 275
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->status:I

    .line 277
    :cond_7
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 278
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->createTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_8
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskListResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 10
    .parameter "response"

    .prologue
    .line 748
    new-instance v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    invoke-direct {v7}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;-><init>()V

    .line 750
    .local v7, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    if-eqz p1, :cond_0

    .line 752
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 753
    .local v6, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, json:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 757
    .local v3, jo:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 758
    const-string v8, "error_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 759
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v9, "error_code"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 761
    const-string v8, "error_msg"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 762
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v9, "error_msg"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 795
    .end local v3           #jo:Lorg/json/JSONObject;
    .end local v4           #json:Ljava/lang/String;
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v7

    .line 765
    .restart local v3       #jo:Lorg/json/JSONObject;
    .restart local v4       #json:Ljava/lang/String;
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v9, 0x0

    iput v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 766
    const-string v8, "total"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 767
    const-string v8, "total"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->totalTaskNum:I

    .line 769
    :cond_2
    const-string v8, "request_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 770
    const-string v8, "request_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->requestId:Ljava/lang/String;

    .line 772
    :cond_3
    iget v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->totalTaskNum:I

    if-lez v8, :cond_0

    const-string v8, "task_info"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 773
    const-string v8, "task_info"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 774
    .local v5, list:Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->list:Ljava/util/List;

    .line 775
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 776
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCloudDownloadTaskInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    move-result-object v2

    .line 777
    .local v2, info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->list:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 783
    .end local v1           #i:I
    .end local v2           #info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    .end local v3           #jo:Lorg/json/JSONObject;
    .end local v4           #json:Ljava/lang/String;
    .end local v5           #list:Lorg/json/JSONArray;
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 786
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 788
    .local v0, e:Ljava/io/IOException;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 789
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 791
    .local v0, e:Lorg/json/JSONException;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskProgressInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;
    .locals 3
    .parameter "jo"

    .prologue
    .line 293
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;-><init>()V

    .line 295
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;
    if-eqz p1, :cond_7

    .line 298
    :try_start_0
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->taskId:Ljava/lang/String;

    .line 301
    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->queryResult:I

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->status:I

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->createTime:J

    .line 310
    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Start_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Start_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->startTime:J

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->finishedSize:J

    .line 316
    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_File_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_File_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->fileSize:J

    .line 319
    :cond_6
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->finishedTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_7
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskProgressInfoResponse(Lorg/apache/http/HttpResponse;[Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    .locals 11
    .parameter "response"
    .parameter "queryTaskId"

    .prologue
    .line 855
    new-instance v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    invoke-direct {v8}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;-><init>()V

    .line 857
    .local v8, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    if-eqz p1, :cond_0

    .line 859
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 860
    .local v7, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, json:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 864
    .local v5, jo:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 865
    const-string v9, "error_code"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 866
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "error_code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 868
    const-string v9, "error_msg"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 869
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "error_msg"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 901
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v6           #json:Ljava/lang/String;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v8

    .line 872
    .restart local v5       #jo:Lorg/json/JSONObject;
    .restart local v6       #json:Ljava/lang/String;
    .restart local v7       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v10, 0x0

    iput v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 873
    const-string v9, "request_id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 874
    const-string v9, "request_id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->requestId:Ljava/lang/String;

    .line 876
    :cond_2
    const-string v9, "task_info"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 877
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->list:Ljava/util/List;

    .line 878
    const-string v9, "task_info"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 879
    .local v3, j:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, p2

    if-ge v1, v9, :cond_0

    .line 880
    aget-object v9, p2, v1

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 881
    .local v4, jj:Lorg/json/JSONObject;
    invoke-virtual {p0, v4}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCloudDownloadTaskProgressInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;

    move-result-object v2

    .line 882
    .local v2, info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;
    aget-object v9, p2, v1

    iput-object v9, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->taskId:Ljava/lang/String;

    .line 883
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->list:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 889
    .end local v1           #i:I
    .end local v2           #info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;
    .end local v3           #j:Lorg/json/JSONObject;
    .end local v4           #jj:Lorg/json/JSONObject;
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v6           #json:Ljava/lang/String;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 892
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 894
    .local v0, e:Ljava/io/IOException;
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 895
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 897
    .local v0, e:Lorg/json/JSONException;
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskStatusInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    .locals 3
    .parameter "jo"

    .prologue
    .line 334
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;-><init>()V

    .line 336
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    if-eqz p1, :cond_8

    .line 339
    :try_start_0
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    .line 342
    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->queryResult:I

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->sourceUrl:Ljava/lang/String;

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->rateLimit:J

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->timeout:J

    .line 357
    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->callback:Ljava/lang/String;

    .line 360
    :cond_6
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 361
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->status:I

    .line 363
    :cond_7
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 364
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->createTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_8
    :goto_0
    return-object v0

    .line 367
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskStatusInfoResponse(Lorg/apache/http/HttpResponse;[Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    .locals 11
    .parameter "response"
    .parameter "queryTaskId"

    .prologue
    .line 802
    new-instance v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    invoke-direct {v8}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;-><init>()V

    .line 804
    .local v8, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    if-eqz p1, :cond_0

    .line 806
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 807
    .local v7, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 809
    .local v6, json:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 811
    .local v5, jo:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 812
    const-string v9, "error_code"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 813
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "error_code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 815
    const-string v9, "error_msg"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 816
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "error_msg"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 848
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v6           #json:Ljava/lang/String;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v8

    .line 819
    .restart local v5       #jo:Lorg/json/JSONObject;
    .restart local v6       #json:Ljava/lang/String;
    .restart local v7       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v10, 0x0

    iput v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 820
    const-string v9, "request_id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 821
    const-string v9, "request_id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->requestId:Ljava/lang/String;

    .line 823
    :cond_2
    const-string v9, "task_info"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 824
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->list:Ljava/util/List;

    .line 825
    const-string v9, "task_info"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 826
    .local v3, j:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, p2

    if-ge v1, v9, :cond_0

    .line 827
    aget-object v9, p2, v1

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 828
    .local v4, jj:Lorg/json/JSONObject;
    invoke-virtual {p0, v4}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCloudDownloadTaskInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    move-result-object v2

    .line 829
    .local v2, info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    aget-object v9, p2, v1

    iput-object v9, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    .line 830
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->list:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 836
    .end local v1           #i:I
    .end local v2           #info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    .end local v3           #j:Lorg/json/JSONObject;
    .end local v4           #jj:Lorg/json/JSONObject;
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v6           #json:Ljava/lang/String;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 839
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 841
    .local v0, e:Ljava/io/IOException;
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 842
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 844
    .local v0, e:Lorg/json/JSONException;
    iget-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    .locals 7
    .parameter "jo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    .line 197
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    if-eqz p1, :cond_8

    .line 200
    :try_start_0
    const-string v5, "md5"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    const-string v5, "md5"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    .line 204
    :cond_0
    const-string v5, "block_list"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    const-string v5, "block_list"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    .line 208
    :cond_1
    const-string v5, "path"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    const-string v5, "path"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    .line 212
    :cond_2
    const-string v5, "size"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    const-string v5, "size"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    .line 216
    :cond_3
    const-string v5, "ctime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    const-string v5, "ctime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->cTime:J

    .line 220
    :cond_4
    const-string v5, "mtime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 221
    const-string v5, "mtime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->mTime:J

    .line 224
    :cond_5
    const-string v5, "isdir"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 225
    const-string v5, "isdir"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, isdir:I
    if-nez v0, :cond_9

    move v5, v3

    :goto_0
    iput-boolean v5, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    .line 229
    .end local v0           #isdir:I
    :cond_6
    const-string v5, "ifhassubdir"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 230
    const-string v5, "ifhassubdir"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 231
    .local v2, subFolder:I
    if-nez v2, :cond_a

    :goto_1
    iput-boolean v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->hasSubFolder:Z

    .line 233
    .end local v2           #subFolder:I
    :cond_7
    const-string v3, "fsid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 234
    const-string v3, "fsid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->fsId:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_8
    :goto_2
    return-object v1

    .restart local v0       #isdir:I
    :cond_9
    move v5, v4

    .line 226
    goto :goto_0

    .end local v0           #isdir:I
    .restart local v2       #subFolder:I
    :cond_a
    move v3, v4

    .line 231
    goto :goto_1

    .line 236
    .end local v2           #subFolder:I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected parseDiffResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 14
    .parameter "response"

    .prologue
    .line 1002
    new-instance v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    invoke-direct {v11}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;-><init>()V

    .line 1004
    .local v11, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    if-eqz p1, :cond_0

    .line 1006
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 1007
    .local v10, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 1009
    .local v8, json:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v7, jo:Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 1012
    const-string v12, "error_code"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1013
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v13, "error_code"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 1015
    const-string v12, "error_msg"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1016
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v13, "error_msg"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 1081
    .end local v7           #jo:Lorg/json/JSONObject;
    .end local v8           #json:Ljava/lang/String;
    .end local v10           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v11

    .line 1020
    .restart local v7       #jo:Lorg/json/JSONObject;
    .restart local v8       #json:Ljava/lang/String;
    .restart local v10       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v13, 0x0

    iput v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 1022
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasMore:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1023
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasMore:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    .line 1026
    :cond_2
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Reset:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1027
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Reset:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    .line 1030
    :cond_3
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cursor:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1031
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cursor:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, cursor:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 1034
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Encoding_UTF8:Ljava/lang/String;

    invoke-static {v0, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    .line 1038
    .end local v0           #cursor:Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Entries:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1039
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Entries:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1041
    .local v2, entriesObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 1042
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    .line 1044
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1045
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1047
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1048
    .local v9, key:Ljava/lang/String;
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;-><init>()V

    .line 1050
    .local v3, entry:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1052
    .local v4, eo:Lorg/json/JSONObject;
    if-eqz v4, :cond_5

    .line 1053
    invoke-virtual {p0, v4}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v12

    iput-object v12, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    .line 1054
    iget-object v12, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iput-object v9, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    .line 1056
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_isDeleted:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1057
    iget-object v12, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_isDeleted:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1058
    .local v5, isDeleted:I
    if-nez v5, :cond_7

    const/4 v12, 0x0

    :goto_2
    iput-boolean v12, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->isDeleted:Z

    .line 1061
    .end local v5           #isDeleted:I
    :cond_6
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1069
    .end local v2           #entriesObject:Lorg/json/JSONObject;
    .end local v3           #entry:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;
    .end local v4           #eo:Lorg/json/JSONObject;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #jo:Lorg/json/JSONObject;
    .end local v8           #json:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v1

    .line 1071
    .local v1, e:Lorg/apache/http/ParseException;
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 1058
    .end local v1           #e:Lorg/apache/http/ParseException;
    .restart local v2       #entriesObject:Lorg/json/JSONObject;
    .restart local v3       #entry:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;
    .restart local v4       #eo:Lorg/json/JSONObject;
    .restart local v5       #isDeleted:I
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7       #jo:Lorg/json/JSONObject;
    .restart local v8       #json:Ljava/lang/String;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_7
    const/4 v12, 0x1

    goto :goto_2

    .line 1072
    .end local v2           #entriesObject:Lorg/json/JSONObject;
    .end local v3           #entry:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;
    .end local v4           #eo:Lorg/json/JSONObject;
    .end local v5           #isDeleted:I
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #jo:Lorg/json/JSONObject;
    .end local v8           #json:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v1

    .line 1074
    .local v1, e:Ljava/io/IOException;
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 1075
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1077
    .local v1, e:Lorg/json/JSONException;
    iget-object v12, v11, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected parseFileFromToExtraInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 12
    .parameter "response"

    .prologue
    .line 624
    new-instance v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v8}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    .line 626
    .local v8, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    if-eqz p1, :cond_1

    .line 629
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 630
    .local v7, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, json:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 634
    .local v9, root:Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 636
    const-string v10, "error_code"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 637
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v11, "error_code"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 639
    const-string v10, "error_msg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 640
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v11, "error_msg"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 647
    :cond_0
    :goto_0
    const-string v10, "extra"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 648
    const-string v10, "extra"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 650
    .local v6, o:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 651
    const-string v10, "list"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 652
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 654
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->list:Ljava/util/List;

    .line 656
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 692
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #o:Lorg/json/JSONObject;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v9           #root:Lorg/json/JSONObject;
    :cond_1
    :goto_2
    return-object v8

    .line 644
    .restart local v5       #json:Ljava/lang/String;
    .restart local v7       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v9       #root:Lorg/json/JSONObject;
    :cond_2
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v11, 0x0

    iput v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 680
    .end local v5           #json:Ljava/lang/String;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v9           #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 682
    .local v1, e:Lorg/apache/http/ParseException;
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2

    .line 657
    .end local v1           #e:Lorg/apache/http/ParseException;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v5       #json:Ljava/lang/String;
    .restart local v6       #o:Lorg/json/JSONObject;
    .restart local v7       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v9       #root:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 659
    .local v4, jo:Lorg/json/JSONObject;
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    .line 661
    .local v3, info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    if-eqz v4, :cond_6

    .line 662
    const-string v10, "from"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 663
    const-string v10, "from"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    .line 666
    :cond_4
    const-string v10, "to"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 667
    const-string v10, "to"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 670
    :cond_5
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 656
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 683
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #o:Lorg/json/JSONObject;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v9           #root:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 685
    .local v1, e:Lorg/json/JSONException;
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2

    .line 686
    .end local v1           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 688
    .local v1, e:Ljava/io/IOException;
    iget-object v10, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2
.end method

.method protected parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 6
    .parameter "response"

    .prologue
    .line 127
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 130
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 131
    .local v2, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, json:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseFileInfoByJson(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 143
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #resEntity:Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v3

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 138
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 4
    .parameter "jo"

    .prologue
    .line 168
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 170
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    if-eqz p1, :cond_0

    .line 171
    :try_start_0
    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "error_code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 174
    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "error_msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v3, 0x0

    iput v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 180
    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Lorg/json/JSONException;
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseFileInfoByJson(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 5
    .parameter "json"

    .prologue
    .line 150
    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    .line 151
    .local v2, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, jo:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    .end local v1           #jo:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Lorg/json/JSONException;
    iget-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseListResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 10
    .parameter "response"

    .prologue
    .line 699
    new-instance v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    invoke-direct {v7}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;-><init>()V

    .line 701
    .local v7, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    if-eqz p1, :cond_0

    .line 703
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 704
    .local v6, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, json:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 708
    .local v3, jo:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 709
    const-string v8, "error_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 710
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v9, "error_code"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 712
    const-string v8, "error_msg"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 713
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v9, "error_msg"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 741
    .end local v3           #jo:Lorg/json/JSONObject;
    .end local v4           #json:Ljava/lang/String;
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v7

    .line 716
    .restart local v3       #jo:Lorg/json/JSONObject;
    .restart local v4       #json:Ljava/lang/String;
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v9, 0x0

    iput v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 717
    const-string v8, "list"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 718
    const-string v8, "list"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 719
    .local v5, list:Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    .line 721
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 722
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v2

    .line 723
    .local v2, info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 729
    .end local v1           #i:I
    .end local v2           #info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    .end local v3           #jo:Lorg/json/JSONObject;
    .end local v4           #json:Ljava/lang/String;
    .end local v5           #list:Lorg/json/JSONArray;
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 732
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 734
    .local v0, e:Ljava/io/IOException;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 735
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 737
    .local v0, e:Lorg/json/JSONException;
    iget-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseMetaResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 12
    .parameter "jsonObject"

    .prologue
    .line 379
    const/4 v6, 0x0

    .line 381
    .local v6, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    if-eqz p1, :cond_0

    .line 384
    :try_start_0
    const-string v10, "error_code"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 386
    new-instance v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v7}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v6           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .local v7, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    :try_start_1
    iget-object v10, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v11, "error_code"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 390
    const-string v10, "error_msg"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 391
    iget-object v10, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v11, "error_msg"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 546
    .end local v7           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .restart local v6       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    :cond_0
    :goto_0
    return-object v6

    .line 394
    :cond_1
    :try_start_2
    const-string v10, "list"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 395
    const-string v10, "list"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 397
    .local v4, list:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 399
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 401
    .local v2, fileNode:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 403
    sget-object v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 405
    .local v8, type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_MediaType:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 406
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_MediaType:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, media:Ljava/lang/String;
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Audio:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 409
    sget-object v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Audio:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 417
    .end local v5           #media:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/baidu/pcs/BaiduPCSActionBase;->$SWITCH_TABLE$com$baidu$pcs$BaiduPCSActionInfo$PCSMetaResponse$MediaType()[I

    move-result-object v10

    invoke-virtual {v8}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 529
    new-instance v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v7}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    .end local v6           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .restart local v7       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    move-object v6, v7

    .line 534
    .end local v7           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .restart local v6       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    :goto_2
    iput-object v8, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 535
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v11, 0x0

    iput v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 536
    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v10

    iput-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 541
    .end local v2           #fileNode:Lorg/json/JSONObject;
    .end local v4           #list:Lorg/json/JSONArray;
    .end local v8           #type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Lorg/json/JSONException;
    :goto_3
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 410
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #fileNode:Lorg/json/JSONObject;
    .restart local v4       #list:Lorg/json/JSONArray;
    .restart local v5       #media:Ljava/lang/String;
    .restart local v8       #type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Video:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 411
    sget-object v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Video:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    goto :goto_1

    .line 412
    :cond_4
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Image:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 413
    sget-object v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Image:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    goto :goto_1

    .line 421
    .end local v5           #media:Ljava/lang/String;
    :pswitch_0
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;-><init>()V

    .line 423
    .local v0, audioInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 424
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->hasthumbnail:Z

    .line 427
    :cond_5
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_ArtistName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 428
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_ArtistName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->artistName:Ljava/lang/String;

    .line 431
    :cond_6
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumTitle:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 432
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumTitle:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumTitle:Ljava/lang/String;

    .line 435
    :cond_7
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArtist:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 436
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArtist:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArtist:Ljava/lang/String;

    .line 439
    :cond_8
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArt:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 440
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArt:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArt:Ljava/lang/String;

    .line 443
    :cond_9
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Composer:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 444
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Composer:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->composer:Ljava/lang/String;

    .line 447
    :cond_a
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackTitle:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 448
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackTitle:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackTitle:Ljava/lang/String;

    .line 451
    :cond_b
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackNumber:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 452
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackNumber:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackNumber:J

    .line 455
    :cond_c
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 456
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->duration:J

    .line 459
    :cond_d
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Compilation:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 460
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Compilation:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->compilation:Ljava/lang/String;

    .line 463
    :cond_e
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Date:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 464
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Date:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->date:Ljava/lang/String;

    .line 467
    :cond_f
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Genre:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 468
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Genre:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->genre:Ljava/lang/String;

    .line 471
    :cond_10
    move-object v6, v0

    .line 473
    goto/16 :goto_2

    .line 477
    .end local v0           #audioInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;
    :pswitch_1
    new-instance v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;

    invoke-direct {v9}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;-><init>()V

    .line 479
    .local v9, videoInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 480
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->hasthumbnail:Z

    .line 483
    :cond_11
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 484
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->resolution:Ljava/lang/String;

    .line 487
    :cond_12
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 488
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->duration:J

    .line 491
    :cond_13
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 492
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->dateTaken:J

    .line 495
    :cond_14
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cateogry:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 496
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cateogry:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->cateogry:Ljava/lang/String;

    .line 499
    :cond_15
    move-object v6, v9

    .line 501
    goto/16 :goto_2

    .line 505
    .end local v9           #videoInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;
    :pswitch_2
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;-><init>()V

    .line 507
    .local v3, imageInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 508
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->dateTaken:J

    .line 511
    :cond_16
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 512
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->resolution:Ljava/lang/String;

    .line 515
    :cond_17
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Latitude:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 516
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Latitude:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->latitude:D

    .line 519
    :cond_18
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Longitude:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 520
    iget-object v10, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Longitude:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->longtitude:D
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 523
    :cond_19
    move-object v6, v3

    .line 525
    goto/16 :goto_2

    .line 541
    .end local v2           #fileNode:Lorg/json/JSONObject;
    .end local v3           #imageInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;
    .end local v4           #list:Lorg/json/JSONArray;
    .end local v6           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .end local v8           #type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    .restart local v7       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .restart local v6       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    goto/16 :goto_3

    .end local v6           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .restart local v7       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    :cond_1a
    move-object v6, v7

    .end local v7           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .restart local v6       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    goto/16 :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected parseSimplefiedResponse(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 4
    .parameter "json"

    .prologue
    .line 578
    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 580
    .local v2, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 582
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, jo:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 589
    .end local v1           #jo:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 4
    .parameter "response"

    .prologue
    .line 554
    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 556
    .local v2, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    if-eqz p1, :cond_0

    .line 558
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, json:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 570
    .end local v1           #json:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 564
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 566
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseSimplefiedResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 3
    .parameter "jo"

    .prologue
    .line 597
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 599
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    if-eqz p1, :cond_0

    .line 601
    :try_start_0
    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 604
    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 616
    :cond_0
    :goto_0
    return-object v1

    .line 609
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseThumbnailResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 7
    .parameter "response"

    .prologue
    .line 961
    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;-><init>()V

    .line 963
    .local v4, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    if-eqz p1, :cond_0

    .line 965
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 966
    .local v3, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, json:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 970
    .local v1, jo:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 971
    const-string v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 972
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v6, "error_code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 974
    const-string v5, "error_msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 975
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v6, "error_msg"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 995
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v4

    .line 978
    .restart local v1       #jo:Lorg/json/JSONObject;
    .restart local v2       #json:Ljava/lang/String;
    .restart local v3       #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v6, 0x0

    iput v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 979
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v6, "thumbnail generate ok."

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 983
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 986
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 988
    .local v0, e:Ljava/io/IOException;
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 989
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 991
    .local v0, e:Lorg/json/JSONException;
    iget-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .locals 6
    .parameter "request"

    .prologue
    .line 53
    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;-><init>()V

    .line 55
    .local v2, ret:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz p1, :cond_0

    .line 58
    invoke-static {}, Lcom/baidu/pcs/HttpClientFactory;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 59
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "compatibility"

    invoke-static {v4, v5}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_0

    .line 63
    const/4 v3, 0x0

    .local v3, retries:I
    :goto_0
    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1

    .line 92
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #retries:I
    :cond_0
    return-object v2

    .line 70
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v3       #retries:I
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    :goto_1
    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v4, :cond_2

    .line 81
    add-int/lit8 v4, v3, 0x1

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 63
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    .line 73
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    .line 75
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 76
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    .line 82
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_2
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mbAccessToken:Ljava/lang/String;

    .line 39
    return-void
.end method
