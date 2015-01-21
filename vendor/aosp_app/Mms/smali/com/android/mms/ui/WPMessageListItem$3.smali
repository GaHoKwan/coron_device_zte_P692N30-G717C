.class Lcom/android/mms/ui/WPMessageListItem$3;
.super Ljava/lang/Object;
.source "WPMessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListItem$3;->this$0:Lcom/android/mms/ui/WPMessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListItem$3;->this$0:Lcom/android/mms/ui/WPMessageListItem;

    #calls: Lcom/android/mms/ui/WPMessageListItem;->updateFromView()V
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageListItem;->access$000(Lcom/android/mms/ui/WPMessageListItem;)V

    .line 346
    return-void
.end method
