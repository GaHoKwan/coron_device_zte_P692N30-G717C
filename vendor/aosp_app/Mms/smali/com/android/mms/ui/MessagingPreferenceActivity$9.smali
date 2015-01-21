.class Lcom/android/mms/ui/MessagingPreferenceActivity$9;
.super Ljava/lang/Thread;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->exportMessages()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

.field final synthetic val$sdCardDirPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->val$sdCardDirPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    .line 972
    const/4 v6, 0x0

    .line 973
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 974
    .local v11, quiteCode:I
    const-string v12, ""

    .line 976
    .local v12, storeFileName:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->val$sdCardDirPath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    .local v7, dir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 978
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_4

    .line 979
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "exportMessages(). make dir has been failed."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1032
    if-eqz v6, :cond_0

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_0
    new-instance v10, Ljava/io/File;

    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_2
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    .end local v7           #dir:Ljava/io/File;
    :goto_0
    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1046
    :cond_3
    return-void

    .line 983
    .end local v10           #file:Ljava/io/File;
    .restart local v7       #dir:Ljava/io/File;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->val$sdCardDirPath:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->getAppropriateFileName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1400(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 984
    if-nez v12, :cond_8

    .line 985
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "exportMessages sms file name is null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1032
    if-eqz v6, :cond_5

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_5
    new-instance v10, Ljava/io/File;

    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_7
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    goto :goto_0

    .line 988
    .end local v10           #file:Ljava/io/File;
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1500()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1600()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 989
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 990
    :cond_9
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "exportMessages query sms cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 991
    const/4 v11, 0x7

    .line 1032
    if-eqz v6, :cond_a

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_a
    new-instance v10, Ljava/io/File;

    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_c
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 994
    .end local v10           #file:Ljava/io/File;
    :cond_d
    :try_start_3
    const-string v0, "MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportMessages query sms cursor count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v1, "//data//data//com.android.mms//message//sms001.db"

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->copyToPhoneMemory(Landroid/database/Cursor;Ljava/lang/String;)I
    invoke-static {v0, v6, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1700(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 999
    .local v9, exportCount:I
    if-lez v9, :cond_11

    .line 1000
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v1, "//data//data//com.android.mms//message//sms001.db"

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->copyToSDMemory(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1800(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1003
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "ExportDict success"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1032
    :goto_1
    if-eqz v6, :cond_e

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_e
    new-instance v10, Ljava/io/File;

    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_10
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 1005
    .end local v10           #file:Ljava/io/File;
    :cond_11
    :try_start_4
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "ExportDict failure there is no message to export"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1006
    const/4 v11, 0x7

    goto :goto_1

    .line 1008
    .end local v7           #dir:Ljava/io/File;
    .end local v9           #exportCount:I
    :catch_0
    move-exception v8

    .line 1009
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_5
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1011
    if-eqz v12, :cond_12

    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1012
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1014
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1015
    const-string v0, "MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    .end local v10           #file:Ljava/io/File;
    :cond_12
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1032
    if-eqz v6, :cond_13

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_13
    new-instance v10, Ljava/io/File;

    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_15
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 1020
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v10           #file:Ljava/io/File;
    :catch_1
    move-exception v8

    .line 1021
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v0, "Mms/Txn"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1032
    if-eqz v6, :cond_16

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_16
    new-instance v10, Ljava/io/File;

    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_18
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 1022
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .end local v10           #file:Ljava/io/File;
    :catch_2
    move-exception v8

    .line 1023
    .local v8, e:Ljava/io/IOException;
    :try_start_7
    const-string v0, "MessagingPreferenceActivity"

    const-string v1, "exportMessages can\'t create the database file"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1027
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1030
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1032
    if-eqz v6, :cond_1a

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_1a
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    const-string v0, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_1b
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_1c
    if-ne v11, v13, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 1032
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #file:Ljava/io/File;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1d

    .line 1033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_1d
    new-instance v10, Ljava/io/File;

    const-string v1, "//data//data//com.android.mms//message//sms001.db"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1037
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_1e
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1040
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_1f
    if-ne v11, v13, :cond_20

    .line 1043
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1032
    :cond_20
    throw v0
.end method
