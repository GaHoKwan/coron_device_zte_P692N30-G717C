.class public Lcom/iflytek/speech/SpeechVerify$PassWord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/SpeechVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassWord"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SpeechVerify;

.field public pwdt:Ljava/lang/String;

.field public pwid:Ljava/lang/String;

.field public pwtext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/SpeechVerify;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/speech/SpeechVerify$PassWord;->a:Lcom/iflytek/speech/SpeechVerify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify$PassWord;->pwdt:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify$PassWord;->pwid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/speech/SpeechVerify$PassWord;->pwtext:Ljava/lang/String;

    return-void
.end method
