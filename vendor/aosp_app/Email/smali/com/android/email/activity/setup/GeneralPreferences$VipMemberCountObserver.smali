.class Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;
.super Landroid/database/ContentObserver;
.source "GeneralPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/GeneralPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VipMemberCountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/GeneralPreferences;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/GeneralPreferences;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    .line 255
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 256
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    #calls: Lcom/android/email/activity/setup/GeneralPreferences;->updateVipMemberCount()V
    invoke-static {v0}, Lcom/android/email/activity/setup/GeneralPreferences;->access$200(Lcom/android/email/activity/setup/GeneralPreferences;)V

    .line 261
    return-void
.end method
