.class public Lcom/sdk/util/NBSrvUrl;
.super Ljava/lang/Object;
.source "NBSrvUrl.java"


# static fields
.field public static ACTIVATE:Ljava/lang/String; = null

.field public static final adccompany:Ljava/lang/String; = "100322"

.field public static logUploadUrl:Ljava/lang/String; = null

.field public static phoneSignUrl:Ljava/lang/String; = null

.field public static final version:Ljava/lang/String; = "MARK_1.0.0_20140218"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    sput-object v0, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/sdk/util/NBSrvUrl;->logUploadUrl:Ljava/lang/String;

    .line 36
    const-string v0, "http://phonesign.zqlx.com/activate/"

    sput-object v0, Lcom/sdk/util/NBSrvUrl;->ACTIVATE:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGETSIGN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "query/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGETSIGNDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "signOfflineData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSUBMITSIGN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sdk/util/NBSrvUrl;->logUploadUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uploadSignPhone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
