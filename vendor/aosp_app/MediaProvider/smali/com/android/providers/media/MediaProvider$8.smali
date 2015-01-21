.class Lcom/android/providers/media/MediaProvider$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 6534
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6537
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocaleChangedReceiver: intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLocale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLocale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6538
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6539
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2100(Lcom/android/providers/media/MediaProvider;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mSearchColsBasicLocale:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$2200(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%1"

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v7}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040004

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6541
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 6542
    .local v2, newLocale:Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->ensureCollatorLocale(Ljava/util/Locale;)V
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->access$2300(Lcom/android/providers/media/MediaProvider;Ljava/util/Locale;)V

    .line 6543
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6544
    :cond_0
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLocaleChangedReceiver: update not needed. old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLocale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6568
    .end local v2           #newLocale:Ljava/util/Locale;
    :cond_1
    :goto_0
    return-void

    .line 6547
    .restart local v2       #newLocale:Ljava/util/Locale;
    :cond_2
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #setter for: Lcom/android/providers/media/MediaProvider;->mLocale:Ljava/util/Locale;
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->access$2002(Lcom/android/providers/media/MediaProvider;Ljava/util/Locale;)Ljava/util/Locale;

    .line 6548
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mUpdateKeyRequest:Lcom/android/providers/media/UpdateKeyRequest;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/UpdateKeyRequest;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6549
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mUpdateKeyRequest:Lcom/android/providers/media/UpdateKeyRequest;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/UpdateKeyRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/media/UpdateKeyRequest;->interrupt()V

    .line 6552
    :cond_3
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-static {v3, v4}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 6553
    .local v1, helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-eqz v1, :cond_5

    .line 6554
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6555
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_4

    .line 6556
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocaleChangedReceiver: Null SQLiteDatabase!"

    invoke-static {v3, v4}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6559
    :cond_4
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    new-instance v4, Lcom/android/providers/media/UpdateKeyRequest;

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v5}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLocale:Ljava/util/Locale;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v0, v5, v6}, Lcom/android/providers/media/UpdateKeyRequest;-><init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    #setter for: Lcom/android/providers/media/MediaProvider;->mUpdateKeyRequest:Lcom/android/providers/media/UpdateKeyRequest;
    invoke-static {v3, v4}, Lcom/android/providers/media/MediaProvider;->access$2402(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/UpdateKeyRequest;)Lcom/android/providers/media/UpdateKeyRequest;

    .line 6561
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mUpdateKeyRequest:Lcom/android/providers/media/UpdateKeyRequest;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/UpdateKeyRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/media/UpdateKeyRequest;->execute()V

    goto :goto_0

    .line 6564
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocaleChangedReceiver: Null DatabaseHelper!"

    invoke-static {v3, v4}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
