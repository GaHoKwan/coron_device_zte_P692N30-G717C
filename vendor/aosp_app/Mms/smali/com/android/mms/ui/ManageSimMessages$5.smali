.class Lcom/android/mms/ui/ManageSimMessages$5;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$date:Ljava/lang/Long;

.field final synthetic val$isIncomingMessage:Z

.field final synthetic val$serviceCenter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-boolean p2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$isIncomingMessage:Z

    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$body:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$serviceCenter:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$date:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 628
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$isIncomingMessage:Z

    if-eqz v0, :cond_1

    .line 629
    const-string v0, "Mms/Txn"

    const-string v1, "Copy incoming sms to phone"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v9

    .line 632
    .local v9, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v9, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$body:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$serviceCenter:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$date:Ljava/lang/Long;

    const/4 v6, 0x1

    invoke-virtual {v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v10

    long-to-int v7, v10

    invoke-static/range {v0 .. v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;

    .line 667
    :goto_0
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 668
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 672
    .end local v9           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :goto_1
    return-void

    .line 636
    .restart local v9       #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$body:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$serviceCenter:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$date:Ljava/lang/Long;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v9           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :catch_0
    move-exception v8

    .line 670
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 648
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 649
    .local v5, currentTime:Ljava/lang/Long;
    const-string v0, "Mms/Txn"

    const-string v1, "Copy outgoing sms to phone"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCurrentSlotId:I
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v9

    .line 652
    .restart local v9       #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v9, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$body:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$serviceCenter:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static/range {v0 .. v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$body:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$serviceCenter:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
