.class public Lts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Message;

.field private a:Ljava/lang/String;

.field final synthetic a:Ltm;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltm;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lts;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p2, p0, Lts;->a:Ljava/lang/String;

    .line 928
    iput-object p3, p0, Lts;->b:Ljava/lang/String;

    .line 929
    iput-object p4, p0, Lts;->a:Landroid/os/Message;

    .line 930
    iput-boolean p5, p0, Lts;->a:Z

    .line 931
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 934
    iget-object v0, p0, Lts;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lts;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    move-result-object v0

    iget-object v1, p0, Lts;->a:Ljava/lang/String;

    iget-object v2, p0, Lts;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lts;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeToRaw(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 937
    iget-object v0, p0, Lts;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
