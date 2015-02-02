.class public Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;
.super Ljava/util/TimerTask;
.source "RecordBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/RecordBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateSecondTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;


# direct methods
.method protected constructor <init>(Lcom/amoi/AmoiEngineerMode/base/RecordBase;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    iget v1, v0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I

    .line 256
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$UpdateSecondTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void
.end method
