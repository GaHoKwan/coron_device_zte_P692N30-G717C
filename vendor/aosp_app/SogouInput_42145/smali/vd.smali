.class public Lvd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lvd;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    return-void
.end method
