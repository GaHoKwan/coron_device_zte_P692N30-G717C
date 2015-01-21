.class public Lve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lve;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lve;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    .line 91
    return-void
.end method
