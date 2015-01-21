.class Lcom/iflytek/speech/SpeechUser$a;
.super Lcom/iflytek/msc/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/SpeechUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/speech/SpeechUser;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/SpeechUser;Lcom/iflytek/speech/SpeechListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/SpeechUser$a;->b:Lcom/iflytek/speech/SpeechUser;

    invoke-direct {p0, p1, p2}, Lcom/iflytek/msc/c/a$a;-><init>(Lcom/iflytek/msc/c/a;Lcom/iflytek/speech/SpeechListener;)V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SpeechUser$a;->b:Lcom/iflytek/speech/SpeechUser;

    sget-object v1, Lcom/iflytek/speech/SpeechUser$Login_State;->Logined:Lcom/iflytek/speech/SpeechUser$Login_State;

    invoke-static {v0, v1}, Lcom/iflytek/speech/SpeechUser;->a(Lcom/iflytek/speech/SpeechUser;Lcom/iflytek/speech/SpeechUser$Login_State;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/msc/c/a$a;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    return-void
.end method
