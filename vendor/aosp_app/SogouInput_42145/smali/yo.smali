.class Lyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lyn;


# direct methods
.method constructor <init>(Lyn;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lyo;->a:Lyn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lyo;->a:Lyn;

    iget-object v0, v0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    .line 1015
    return-void
.end method
