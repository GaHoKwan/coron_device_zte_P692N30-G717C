.class Lcom/android/simmelock/LockSetting$2;
.super Ljava/lang/Object;
.source "LockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/LockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/LockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/LockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/simmelock/LockSetting$2;->this$0:Lcom/android/simmelock/LockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/simmelock/LockSetting$2;->this$0:Lcom/android/simmelock/LockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    return-void
.end method
