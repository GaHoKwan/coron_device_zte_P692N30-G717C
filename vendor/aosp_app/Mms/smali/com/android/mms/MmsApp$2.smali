.class Lcom/android/mms/MmsApp$2;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/MmsApp$2;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/MmsApp$2;->this$0:Lcom/android/mms/MmsApp;

    #getter for: Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/MmsApp;->access$100(Lcom/android/mms/MmsApp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setPendingMmsFailed(Landroid/content/Context;)V

    .line 169
    return-void
.end method
