.class Lcom/android/mms/ui/FolderViewListItem$1;
.super Ljava/lang/Object;
.source "FolderViewListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderViewListItem;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewListItem$1;->this$0:Lcom/android/mms/ui/FolderViewListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewListItem$1;->this$0:Lcom/android/mms/ui/FolderViewListItem;

    #calls: Lcom/android/mms/ui/FolderViewListItem;->updateFromView()V
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewListItem;->access$000(Lcom/android/mms/ui/FolderViewListItem;)V

    .line 246
    return-void
.end method
