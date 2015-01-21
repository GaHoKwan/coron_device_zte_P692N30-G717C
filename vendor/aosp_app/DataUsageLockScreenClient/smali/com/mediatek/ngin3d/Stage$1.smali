.class Lcom/mediatek/ngin3d/Stage$1;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/mediatek/ngin3d/UiHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/Stage;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 94
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 95
    return-void
.end method
