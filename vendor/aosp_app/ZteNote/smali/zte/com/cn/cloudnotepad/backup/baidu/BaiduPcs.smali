.class public Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;
.super Ljava/lang/Object;
.source "BaiduPcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;,
        Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "bAGi5ceahOVMkirhACu7QMIL"

.field private static final API_SECRET:Ljava/lang/String; = "LheTA3Rd1dsHn6kT5bcknTia7BhSQp68"

.field public static final BIND_CANCELED:I = 0x2

.field public static final BIND_EXCEPTION:I = 0x1

.field public static final BIND_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaiduPcs"


# instance fields
.field private final Default_Error:I

.field private final No_Error:I

.field public mAccessToken:Ljava/lang/String;

.field public mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

.field public mBytes:J

.field private mContext:Landroid/content/Context;

.field public mExpires:Ljava/lang/String;

.field private mListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

.field public mTotal:J

.field public mbOauth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->No_Error:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->Default_Error:I

    .line 54
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

    return-object v0
.end method


# virtual methods
.method public bindBaiduPcs(Ljava/lang/String;Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;)V
    .locals 8
    .parameter "token"
    .parameter "listener"

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Lcom/baidu/oauth/BaiduOAuth;

    invoke-direct {v0}, Lcom/baidu/oauth/BaiduOAuth;-><init>()V

    .line 65
    .local v0, oauthClient:Lcom/baidu/oauth/BaiduOAuth;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mContext:Landroid/content/Context;

    const-string v2, "bAGi5ceahOVMkirhACu7QMIL"

    const-string v3, "LheTA3Rd1dsHn6kT5bcknTia7BhSQp68"

    const-string v5, "dev001"

    new-instance v6, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;

    invoke-direct {v6, p0, p2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$1;-><init>(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/oauth/BaiduOAuth;->startImplicitBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #oauthClient:Lcom/baidu/oauth/BaiduOAuth;
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v7

    .line 95
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in bindBaiduPcs(), Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz p2, :cond_0

    .line 97
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;->onComplete(I)V

    goto :goto_0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in copy() from ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-virtual {v1, p1}, Lcom/baidu/pcs/BaiduPCSClient;->deleteFile(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in deleteFile(), exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public deleteFiles(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-virtual {v1, p1}, Lcom/baidu/pcs/BaiduPCSClient;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in deleteFiles(), exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public doDownloadFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "cloudFileName"
    .parameter "localFileName"

    .prologue
    .line 191
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 192
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$2;-><init>(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/baidu/pcs/BaiduPCSClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    .line 211
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    iget v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    return v1
.end method

.method public doUploadFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "localFilePath"
    .parameter "pcsFilePath"

    .prologue
    .line 226
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$3;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$3;-><init>(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/baidu/pcs/BaiduPCSClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/pcs/BaiduPCSStatusListener;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v0

    .line 244
    .local v0, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;
    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    return v1
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "cloudFileName"
    .parameter "localFileName"

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->doDownloadFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in downloadFile() from ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFileMeta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 125
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-virtual {v2, p1}, Lcom/baidu/pcs/BaiduPCSClient;->meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v1

    .line 126
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v2, :cond_0

    .line 127
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BaiduPcs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in getFileMeta(), exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFilePathList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "dir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 105
    :try_start_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    const-string v6, "name"

    const-string v7, "asc"

    invoke-virtual {v4, p1, v6, v7}, Lcom/baidu/pcs/BaiduPCSClient;->list(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v4

    iget-object v3, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->list:Ljava/util/List;

    .line 106
    .local v3, pcsFileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 107
    :cond_0
    const-string v4, "BaiduPcs"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in getFilePathList(), dir = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 118
    .end local v3           #pcsFileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;>;"
    :goto_0
    return-object v2

    .line 110
    .restart local v3       #pcsFileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 114
    const-string v4, "BaiduPcs"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in getFilePathList(), dir = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #pcsFileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;>;"
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "BaiduPcs"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in getFilePathList(), dir = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 118
    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #pcsFileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;>;"
    :cond_2
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-object v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->path:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public initBaiduPcs(Ljava/lang/String;)V
    .locals 3
    .parameter "accessToken"

    .prologue
    .line 58
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mbOauth:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/baidu/pcs/BaiduPCSClient;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mbOauth:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    .line 60
    return-void
.end method

.method public makeDir(Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-virtual {v1, p1}, Lcom/baidu/pcs/BaiduPCSClient;->makeDir(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in makeDir("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "oldFilePath"
    .parameter "newName"

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/pcs/BaiduPCSClient;->rename(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v1, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in rename() from ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setOnProgressBaiduStatusListener(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

    .line 43
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "localFilePath"
    .parameter "pcsFilePath"

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->doUploadFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaiduPcs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in uploadFile() from ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, -0x1

    goto :goto_0
.end method
