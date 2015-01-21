.class public Lyl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lyl;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lyl;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Z)Z

    .line 511
    iget-object v0, p0, Lyl;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    .line 525
    return-void
.end method
