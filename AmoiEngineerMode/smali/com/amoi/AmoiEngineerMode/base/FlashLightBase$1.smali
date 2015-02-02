.class Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$1;
.super Ljava/lang/Object;
.source "FlashLightBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->gotest()V

    .line 45
    return-void
.end method
