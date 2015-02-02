.class Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;
.super Landroid/os/Handler;
.source "VibratorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->initVibrator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/VibratorBase;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->stopVibrate()V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    iget v0, v0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mAningTestTime:I

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x31380

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    iget v1, v0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mAningTestTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mAningTestTime:I

    .line 74
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->vibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/VibratorBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->stopVibrate()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 74
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
