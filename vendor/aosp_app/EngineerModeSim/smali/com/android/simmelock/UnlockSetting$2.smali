.class Lcom/android/simmelock/UnlockSetting$2;
.super Ljava/lang/Object;
.source "UnlockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/UnlockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/UnlockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/UnlockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/simmelock/UnlockSetting$2;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/simmelock/UnlockSetting$2;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 142
    return-void
.end method
