.class Lcom/mediatek/smsreg/SmsInfoUnit;
.super Ljava/lang/Object;
.source "XMLgenerator.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mPostfix:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object v0, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mPrefix:Ljava/lang/String;

    .line 321
    iput-object v0, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mContent:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mPostfix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method getPostfix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mPostfix:Ljava/lang/String;

    return-object v0
.end method

.method getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "cntStr"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mContent:Ljava/lang/String;

    .line 330
    return-void
.end method

.method setPostfix(Ljava/lang/String;)V
    .locals 0
    .parameter "postStr"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mPostfix:Ljava/lang/String;

    .line 334
    return-void
.end method

.method setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "preStr"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mediatek/smsreg/SmsInfoUnit;->mPrefix:Ljava/lang/String;

    .line 326
    return-void
.end method
