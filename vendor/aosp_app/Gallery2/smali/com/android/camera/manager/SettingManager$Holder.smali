.class Lcom/android/camera/manager/SettingManager$Holder;
.super Ljava/lang/Object;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field mIndicatorIconRes:I

.field mIndicatorKey:Ljava/lang/String;

.field mSettingKeys:[I

.field final synthetic this$0:Lcom/android/camera/manager/SettingManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "res"
    .parameter "keys"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/camera/manager/SettingManager$Holder;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/android/camera/manager/SettingManager$Holder;->mIndicatorKey:Ljava/lang/String;

    .line 417
    iput p3, p0, Lcom/android/camera/manager/SettingManager$Holder;->mIndicatorIconRes:I

    .line 418
    iput-object p4, p0, Lcom/android/camera/manager/SettingManager$Holder;->mSettingKeys:[I

    .line 419
    return-void
.end method
