.class Lcom/baidu/pcs/BaiduPCSActionBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/BaiduPCSActionBase$1;,
        Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    }
.end annotation


# static fields
.field static final Command_File:Ljava/lang/String; = "file"

.field static final Command_Service:Ljava/lang/String; = "services"

.field static final Command_Stream:Ljava/lang/String; = "stream"

.field static final Command_Thumbnail:Ljava/lang/String; = "thumbnail"

.field static final DEFAULT_MAX_RETRIES:I = 0x6

.field private static final KEY_X_CID:Ljava/lang/String; = "X_CID"

.field private static final KEY_X_UA:Ljava/lang/String; = "X_UA"

.field private static final KEY_X_UID:Ljava/lang/String; = "X_UID"

.field static final Key_AccessToken:Ljava/lang/String; = "access_token"

.field static final Key_BlockList:Ljava/lang/String; = "block_list"

.field private static final Key_CTime:Ljava/lang/String; = "ctime"

.field static final Key_Content_CRC32:Ljava/lang/String; = "content-crc32"

.field static final Key_Content_Md5:Ljava/lang/String; = "content-md5"

.field static final Key_ErrorCode:Ljava/lang/String; = "error_code"

.field static final Key_ErrorMessage:Ljava/lang/String; = "error_msg"

.field private static final Key_Extra:Ljava/lang/String; = "extra"

.field private static final Key_FilesNum:Ljava/lang/String; = "filenum"

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

.field static Max_Retries:I = 0x0

.field static final OVER_WRITE:Ljava/lang/String; = "overwrite"

.field static final PCSRequestUrl:Ljava/lang/String; = "https://pcs.baidu.com/rest/2.0/pcs"

.field static final RENAME:Ljava/lang/String; = "newcopy"

.field private static final TAG:Ljava/lang/String; = "BaiduPCSActionBase"

.field static final Value_File_Length:Ljava/lang/String; = "content-length"

.field static final Value_Total_Task:Ljava/lang/String; = "total"

.field static final XlcoundRequestUrl:Ljava/lang/String; = "http://pcs.baidu.com/rest/2.0/xcloud/ext/"

.field private static mTn:Ljava/lang/String;

.field private static mUa:Ljava/lang/String;

.field private static mUid:Ljava/lang/String;


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

.field public mUploadSameNameFile:Ljava/lang/String;

.field private mbAccessToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->mTn:Ljava/lang/String;

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUa:Ljava/lang/String;

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUid:Ljava/lang/String;

    const/4 v0, 0x6

    sput v0, Lcom/baidu/pcs/BaiduPCSActionBase;->Max_Retries:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "artistName"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_ArtistName:Ljava/lang/String;

    const-string v0, "albumTitle"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumTitle:Ljava/lang/String;

    const-string v0, "albumArtist"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArtist:Ljava/lang/String;

    const-string v0, "albumArt"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArt:Ljava/lang/String;

    const-string v0, "composer"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Composer:Ljava/lang/String;

    const-string v0, "trackTitle"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackTitle:Ljava/lang/String;

    const-string v0, "trackNumber"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackNumber:Ljava/lang/String;

    const-string v0, "dateTaken"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    const-string v0, "compilation"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Compilation:Ljava/lang/String;

    const-string v0, "date"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Date:Ljava/lang/String;

    const-string v0, "genre"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Genre:Ljava/lang/String;

    const-string v0, "cateogry"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cateogry:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    const-string v0, "resolution"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    const-string v0, "latitude"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Latitude:Ljava/lang/String;

    const-string v0, "longitude"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Longitude:Ljava/lang/String;

    const-string v0, "entries"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Entries:Ljava/lang/String;

    const-string v0, "has_more"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasMore:Ljava/lang/String;

    const-string v0, "reset"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Reset:Ljava/lang/String;

    const-string v0, "cursor"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cursor:Ljava/lang/String;

    const-string v0, "isdelete"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_isDeleted:Ljava/lang/String;

    const-string v0, "mediaType"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_MediaType:Ljava/lang/String;

    const-string v0, "hasThumbnail"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    const-string v0, "audio"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Audio:Ljava/lang/String;

    const-string v0, "video"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Video:Ljava/lang/String;

    const-string v0, "image"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Image:Ljava/lang/String;

    const-string v0, "utf8"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Encoding_UTF8:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mbAccessToken:Ljava/lang/String;

    const-string v0, "source_url"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    const-string v0, "save_path"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    const-string v0, "rate_limit"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    const-string v0, "timeout"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    const-string v0, "callback"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    const-string v0, "status"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    const-string v0, "create_time"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    const-string v0, "start_time"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Start_Time:Ljava/lang/String;

    const-string v0, "finished_size"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Size:Ljava/lang/String;

    const-string v0, "file_size"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_File_Size:Ljava/lang/String;

    const-string v0, "finish_time"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Time:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUploadSameNameFile:Ljava/lang/String;

    return-void
.end method

.method private buildParams(Ljava/util/List;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->addEquipmentInfoToParam(Ljava/util/List;)V

    :cond_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "utf8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static getMaxRequestRetriesNumber()I
    .locals 1

    sget v0, Lcom/baidu/pcs/BaiduPCSActionBase;->Max_Retries:I

    return v0
.end method

.method static setMaxRequestRetriesNumber(I)V
    .locals 2

    if-gtz p0, :cond_0

    const-string v0, "BaiduPCSActionBase"

    const-string v1, "maxRetries must >0"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Max_Retries:I

    goto :goto_0
.end method

.method static setTn(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mTn:Ljava/lang/String;

    return-void
.end method

.method static setUa(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUa:Ljava/lang/String;

    return-void
.end method

.method static setUid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addEquipmentInfoToParam(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->mTn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "X_CID"

    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionBase;->mTn:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "X_UA"

    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionBase;->mUa:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "X_UID"

    sget-object v2, Lcom/baidu/pcs/BaiduPCSActionBase;->mUid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected buildBodyParamsWithFromTo(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    const-string v5, "from"

    iget-object v6, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "to"

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "list"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method protected buildBodyParamsWithList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "path"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "list"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected buildParams(Ljava/util/List;)Ljava/lang/String;
    .locals 1
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

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/baidu/pcs/BaiduPCSActionBase;->buildParams(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected closeInputStream(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaiduPCSActionBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in closeInputStream  for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected closeRandomAccessFile(Ljava/io/RandomAccessFile;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaiduPCSActionBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in closeRandomAccessFile  for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mbAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method protected parseCloudDownloadTaskInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    .locals 3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;-><init>()V

    if-eqz p1, :cond_8

    :try_start_0
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->queryResult:I

    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->sourceUrl:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->rateLimit:J

    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->timeout:J

    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->callback:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->status:I

    :cond_7
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->createTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskListResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v2, "total"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "total"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->totalTaskNum:I

    :cond_2
    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->requestId:Ljava/lang/String;

    :cond_3
    iget v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->totalTaskNum:I

    if-lez v2, :cond_0

    const-string v2, "task_info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "task_info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->list:Ljava/util/List;

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCloudDownloadTaskInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskProgressInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;
    .locals 3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;-><init>()V

    if-eqz p1, :cond_7

    :try_start_0
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->taskId:Ljava/lang/String;

    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->queryResult:I

    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->status:I

    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->createTime:J

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Start_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Start_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->startTime:J

    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->finishedSize:J

    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_File_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_File_Size:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->fileSize:J

    :cond_6
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Finished_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->finishedTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskProgressInfoResponse(Lorg/apache/http/HttpResponse;[Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->requestId:Ljava/lang/String;

    :cond_2
    const-string v2, "task_info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->list:Ljava/util/List;

    const-string v2, "task_info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCloudDownloadTaskProgressInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;

    move-result-object v3

    aget-object v4, p2, v0

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskProgressInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskStatusInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;
    .locals 3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;-><init>()V

    if-eqz p1, :cond_8

    :try_start_0
    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->queryResult:I

    :cond_1
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Source_Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->sourceUrl:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Save_Path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Rate_Limit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->rateLimit:J

    :cond_4
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Timeout:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->timeout:J

    :cond_5
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Callback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->callback:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Status:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->status:I

    :cond_7
    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Create_Time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->createTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parseCloudDownloadTaskStatusInfoResponse(Lorg/apache/http/HttpResponse;[Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->requestId:Ljava/lang/String;

    :cond_2
    const-string v2, "task_info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->list:Ljava/util/List;

    const-string v2, "task_info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCloudDownloadTaskInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;

    move-result-object v3

    aget-object v4, p2, v0

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;-><init>()V

    if-eqz p1, :cond_8

    :try_start_0
    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    :cond_0
    const-string v2, "block_list"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "block_list"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->blockList:Ljava/lang/String;

    :cond_1
    const-string v2, "path"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "path"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    :cond_2
    const-string v2, "size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    :cond_3
    const-string v2, "ctime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ctime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->cTime:J

    :cond_4
    const-string v2, "mtime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "mtime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->mTime:J

    :cond_5
    const-string v2, "isdir"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "isdir"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    move v2, v0

    :goto_0
    iput-boolean v2, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->isDir:Z

    :cond_6
    const-string v2, "ifhassubdir"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ifhassubdir"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    :goto_1
    iput-boolean v0, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->hasSubFolder:Z

    :cond_7
    const-string v0, "fsid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "fsid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->fsId:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    return-object v3

    :cond_9
    move v2, v1

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method protected parseDiffResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v0, "error_code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v1, "error_code"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v1, "error_msg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasMore:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasMore:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    :cond_2
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Reset:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Reset:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    :cond_3
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cursor:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cursor:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Encoding_UTF8:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Entries:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Entries:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;

    invoke-direct {v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v6}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iput-object v0, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_isDeleted:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_isDeleted:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDifferEntryInfo;->isDeleted:Z

    :cond_6
    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected parseFileFromToExtraInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v2, "error_msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v2, "extra"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "extra"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->list:Ljava/util/List;

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    if-eqz v3, :cond_3

    const-string v5, "from"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "from"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    :cond_1
    const-string v5, "to"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "to"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    :cond_2
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_5
    :goto_2
    return-object v1

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2
.end method

.method protected parseFileInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseFileInfoByJson(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseFileInfoByJson(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    .locals 3

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseListResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v2, "list"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "list"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseMetaResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    :try_start_0
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v1, "error_msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_18

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_MediaType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_MediaType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Audio:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Audio:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    move-object v2, v0

    :goto_1
    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionBase$1;->$SwitchMap$com$baidu$pcs$BaiduPCSActionInfo$PCSMetaResponse$MediaType:[I

    invoke-virtual {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    :try_start_3
    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->type:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v2, 0x0

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseCommonFileInfoByJSONObject(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Video:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Video:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    move-object v2, v0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Value_Media_Image:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Image:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    move-object v2, v0

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;-><init>()V

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->hasthumbnail:Z

    :cond_5
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_ArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_ArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->artistName:Ljava/lang/String;

    :cond_6
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumTitle:Ljava/lang/String;

    :cond_7
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArtist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArtist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArtist:Ljava/lang/String;

    :cond_8
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_AlbumArt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArt:Ljava/lang/String;

    :cond_9
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Composer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Composer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->composer:Ljava/lang/String;

    :cond_a
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackTitle:Ljava/lang/String;

    :cond_b
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_TrackNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackNumber:J

    :cond_c
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->duration:J

    :cond_d
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Compilation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Compilation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->compilation:Ljava/lang/String;

    :cond_e
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->date:Ljava/lang/String;

    :cond_f
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Genre:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Genre:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->genre:Ljava/lang/String;

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_3

    :pswitch_1
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;-><init>()V

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_HasThumbnail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->hasthumbnail:Z

    :cond_10
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->resolution:Ljava/lang/String;

    :cond_11
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->duration:J

    :cond_12
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->dateTaken:J

    :cond_13
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cateogry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Cateogry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSVideoMetaResponse;->cateogry:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_2
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;-><init>()V

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_DateTaken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->dateTaken:J

    :cond_14
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Resolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->resolution:Ljava/lang/String;

    :cond_15
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Latitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Latitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->latitude:D

    :cond_16
    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Longitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->Key_Longitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSImageMetaResponse;->longtitude:D
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :cond_17
    move-object v2, v0

    goto/16 :goto_1

    :cond_18
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected parseSimplefiedResponse(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseSimplefiedResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "error_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    iput v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseThumbnailResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 4

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v0, "error_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    const-string v0, "error_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v3, "error_msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v2, "thumbnail generate ok."

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method protected sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .locals 6

    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/baidu/pcs/HttpClientFactory;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "compatibility"

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_1

    sget v1, Lcom/baidu/pcs/BaiduPCSActionBase;->Max_Retries:I

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-interface {v3, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    goto :goto_2

    :cond_1
    return-object v2
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mbAccessToken:Ljava/lang/String;

    return-void
.end method

.method setUploadSameNameFile(Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionBase$1;->$SwitchMap$com$baidu$pcs$BaiduPCSActionInfo$PCSUploadSameNameFile:[I

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUploadSameNameFile:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "overwrite"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUploadSameNameFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "newcopy"

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase;->mUploadSameNameFile:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
