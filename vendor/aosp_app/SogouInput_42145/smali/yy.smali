.class public Lyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformScrollView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lyy;->a:Lcom/sohu/inputmethod/platform/PlatformScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lyy;->a:Lcom/sohu/inputmethod/platform/PlatformScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->scrollTo(II)V

    .line 52
    return-void
.end method
