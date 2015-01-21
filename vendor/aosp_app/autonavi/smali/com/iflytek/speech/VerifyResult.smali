.class public Lcom/iflytek/speech/VerifyResult;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "VerifyResult"


# instance fields
.field public dcs:Ljava/lang/String;

.field public ret:Z

.field public rgn:I

.field public source:Ljava/lang/String;

.field public sst:Ljava/lang/String;

.field public suc:I

.field public trs:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/iflytek/speech/VerifyResult;->ret:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/iflytek/speech/VerifyResult;->dcs:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iflytek/speech/VerifyResult;->vid:Ljava/lang/String;

    iput v0, p0, Lcom/iflytek/speech/VerifyResult;->suc:I

    iput v0, p0, Lcom/iflytek/speech/VerifyResult;->rgn:I

    const-string v1, ""

    iput-object v1, p0, Lcom/iflytek/speech/VerifyResult;->trs:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/iflytek/speech/VerifyResult;->source:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/speech/VerifyResult;->source:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONTokener;

    iget-object v2, p0, Lcom/iflytek/speech/VerifyResult;->source:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "VerifyResult = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/speech/VerifyResult;->source:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/a/h;->a(Ljava/lang/String;)V

    const-string v1, "ret"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ret"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/iflytek/speech/VerifyResult;->ret:Z

    :cond_1
    const-string v0, "sst"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sst"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/VerifyResult;->sst:Ljava/lang/String;

    :cond_2
    const-string v0, "dcs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dcs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/VerifyResult;->dcs:Ljava/lang/String;

    :cond_3
    const-string v0, "suc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "suc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/speech/VerifyResult;->suc:I

    :cond_4
    const-string v0, "vid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "vid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/VerifyResult;->vid:Ljava/lang/String;

    :cond_5
    const-string v0, "rgn"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "rgn"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/speech/VerifyResult;->rgn:I

    :cond_6
    const-string v0, "trs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "trs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/VerifyResult;->trs:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
