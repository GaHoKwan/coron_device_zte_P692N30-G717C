.class Lcom/android/mms/ui/ClassZeroActivity$3$1;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassZeroActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ClassZeroActivity$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$3$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #calls: Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 293
    return-void
.end method
