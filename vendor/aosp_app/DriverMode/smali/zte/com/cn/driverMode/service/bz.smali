.class final Lzte/com/cn/driverMode/service/bz;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMSmsReceiver;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMSmsReceiver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a:Lzte/com/cn/driverMode/service/bv;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "DMSmsReceiver"

    const-string v1, "application or handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->c(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Lzte/com/cn/driverMode/service/DMService;

    move-result-object v2

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a(Lzte/com/cn/driverMode/service/DMSmsReceiver;Lzte/com/cn/driverMode/service/by;)Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->e(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Lzte/com/cn/driverMode/service/by;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->d(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->e(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Lzte/com/cn/driverMode/service/by;

    move-result-object v1

    const-string v2, "Reject_inSms"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->c(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Lzte/com/cn/driverMode/service/DMService;

    move-result-object v2

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    if-eqz v2, :cond_7

    :cond_5
    const-string v0, "DMSmsReceiver"

    const-string v1, "receive sms but don\'t notify"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :try_start_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->d(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "read=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "0"

    aput-object v7, v4, v5

    const-string v5, "_id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    if-eqz v1, :cond_8

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "DMSmsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "| body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v3, Lzte/com/cn/driverMode/service/ci;

    invoke-direct {v3, v6, v2, v0}, Lzte/com/cn/driverMode/service/ci;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const-string v0, "DMSmsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dmApplication.mmsQueue.size :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    iget-object v3, v3, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v3, v3, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bz;->a:Lzte/com/cn/driverMode/service/DMSmsReceiver;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_9
    move-object v0, v6

    move-object v2, v6

    goto :goto_3
.end method
