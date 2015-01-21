.class public Lcom/isw/android/corp/bean/CompanyItemBean;
.super Ljava/lang/Object;
.source "CompanyItemBean.java"


# instance fields
.field public bDotCom:Z

.field public bPushCom:Z

.field public bShowCom:Z

.field public dotrawid:Ljava/lang/String;

.field public dotservice:Ljava/lang/String;

.field public iconid:Ljava/lang/String;

.field public iconraw:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public sshow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconraw:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->inputStream:Ljava/io/InputStream;

    .line 44
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    .line 45
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->bPushCom:Z

    .line 46
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "iconid"
    .parameter "dotservice"
    .parameter "sshow"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconraw:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->inputStream:Ljava/io/InputStream;

    .line 44
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    .line 45
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->bPushCom:Z

    .line 46
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 58
    return-void
.end method
