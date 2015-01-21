.class Lcom/android/mms/ui/CBMessageListActivity$9$1;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/CBMessageListActivity$9;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$9$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$9$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$9;

    iget-object v0, v0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/CBMessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 850
    .local v8, iter:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 851
    .local v3, deleteCbUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$9$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$9;

    iget-object v0, v0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 852
    .local v5, argsCb:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 853
    .local v7, i:I
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 856
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_0

    .line 858
    const-string v0, "CBMessageListActivity"

    const-string v1, "Cb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 860
    const-string v0, "CBMessageListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argsCb[i]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v5, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    sget-object v3, Lcom/android/mms/ui/CBMessageListActivity;->CONTENT_URI:Landroid/net/Uri;

    .line 862
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 866
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$9$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$9;

    iget-object v0, v0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    move-result-object v0

    const/16 v1, 0x76e

    const/4 v2, 0x0

    const-string v4, "ForMultiDelete"

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 868
    return-void
.end method
