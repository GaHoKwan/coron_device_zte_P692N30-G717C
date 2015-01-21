.class public Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
.super Lcom/android/email/AttachmentInfo;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageViewAttachmentInfo"
.end annotation


# static fields
.field private static sSavedFileInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/email/AttachmentInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mIconView:Landroid/widget/ImageView;

.field private mIsUserCancelled:Z

.field private mLoadFailed:Z

.field private mLoaded:Z

.field private mOpenButton:Landroid/widget/Button;

.field private final mProgressView:Landroid/widget/ProgressBar;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1927
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 1
    .parameter "context"
    .parameter "oldInfo"

    .prologue
    const/4 v0, 0x0

    .line 1944
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)V

    .line 1921
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z

    .line 1925
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoadFailed:Z

    .line 1945
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;

    .line 1946
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;

    .line 1947
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;

    .line 1948
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;

    .line 1949
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    .line 1950
    iget-boolean v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z

    .line 1951
    iget-boolean v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z

    .line 1952
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1916
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;)V
    .locals 1
    .parameter "context"
    .parameter "attachment"
    .parameter "progressView"

    .prologue
    const/4 v0, 0x0

    .line 1935
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1921
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z

    .line 1925
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoadFailed:Z

    .line 1936
    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    .line 1937
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1916
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->setSavedPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoadFailed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoadFailed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIsUserCancelled:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private getSavedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2022
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private setSavedPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2008
    if-nez p1, :cond_0

    .line 2009
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    :goto_0
    return-void

    .line 2011
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getOpenButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mOpenButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getProgressView()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getSaveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 2028
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;

    move-result-object v1

    .line 2029
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2030
    .local v2, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2032
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2039
    :goto_0
    return-object v2

    .line 2033
    :catch_0
    move-exception v0

    .line 2034
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2035
    goto :goto_0

    .line 2037
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/AttachmentInfo;->getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1956
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1959
    :cond_0
    return-void
.end method

.method public isFileSaved()Z
    .locals 3

    .prologue
    .line 1995
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;

    move-result-object v0

    .line 1996
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1997
    const/4 v1, 0x0

    .line 2004
    :cond_0
    :goto_0
    return v1

    .line 1999
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 2000
    .local v1, savedFileExists:Z
    if-nez v1, :cond_0

    .line 2002
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->setSavedPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 2060
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mLoaded:Z

    return v0
.end method

.method public showProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    .line 1963
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1964
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 1975
    :goto_0
    return-void

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1971
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1972
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1974
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public showProgressIndeterminate()V
    .locals 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1981
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1982
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1984
    :cond_1
    return-void
.end method
