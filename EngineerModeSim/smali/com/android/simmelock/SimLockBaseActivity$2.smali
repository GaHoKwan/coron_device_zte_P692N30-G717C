.class Lcom/android/simmelock/SimLockBaseActivity$2;
.super Ljava/lang/Object;
.source "SimLockBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/simmelock/SimLockBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SimLockBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SimLockBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/simmelock/SimLockBaseActivity$2;->this$0:Lcom/android/simmelock/SimLockBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method
