.class public Lcom/android/providers/drm/Ntp;
.super Ljava/lang/Object;
.source "Ntp.java"


# static fields
.field private static final INVALID_OFFSET:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "Ntp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sync(Ljava/lang/String;)I
    .locals 30
    .parameter "host"

    .prologue
    .line 20
    const/16 v19, 0x2

    .line 21
    .local v19, retry:I
    const/16 v16, 0x7b

    .line 22
    .local v16, port:I
    const/16 v25, 0xbb8

    .line 26
    .local v25, timeout:I
    const/4 v10, 0x0

    .line 28
    .local v10, ipv4Addr:Ljava/net/InetAddress;
    :try_start_0
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "get address from host: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static/range {p0 .. p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 34
    :goto_0
    const/16 v22, -0x1

    .line 35
    .local v22, serviceStatus:I
    const/16 v23, 0x0

    .line 36
    .local v23, socket:Ljava/net/DatagramSocket;
    const-wide/16 v17, -0x1

    .line 37
    .local v17, responseTime:J
    const/4 v14, 0x0

    .line 39
    .local v14, offset:I
    :try_start_1
    const-string v26, "Ntp"

    const-string v27, "create datagram socket"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v24, Ljava/net/DatagramSocket;

    invoke-direct/range {v24 .. v24}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 41
    .end local v23           #socket:Ljava/net/DatagramSocket;
    .local v24, socket:Ljava/net/DatagramSocket;
    :try_start_2
    invoke-virtual/range {v24 .. v25}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 43
    const/4 v2, 0x0

    .local v2, attempts:I
    :goto_1
    move/from16 v0, v19

    if-gt v2, v0, :cond_0

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 47
    :try_start_3
    new-instance v26, Lcom/android/providers/drm/NtpMessage;

    invoke-direct/range {v26 .. v26}, Lcom/android/providers/drm/NtpMessage;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lcom/android/providers/drm/NtpMessage;->toByteArray()[B

    move-result-object v3

    .line 48
    .local v3, data:[B
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-direct {v15, v3, v0, v10, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 50
    .local v15, outgoing:Ljava/net/DatagramPacket;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 51
    .local v20, sentTime:J
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 52
    const-string v26, "Ntp"

    const-string v27, "sent via datagram socket"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v9, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 59
    .local v9, incoming:Ljava/net/DatagramPacket;
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v17, v26, v20

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L

    div-double v26, v26, v28

    const-wide v28, 0x41e0754fd0000000L

    add-double v4, v26, v28

    .line 66
    .local v4, destinationTimestamp:D
    new-instance v13, Lcom/android/providers/drm/NtpMessage;

    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Lcom/android/providers/drm/NtpMessage;-><init>([B)V

    .line 67
    .local v13, msg:Lcom/android/providers/drm/NtpMessage;
    iget-wide v0, v13, Lcom/android/providers/drm/NtpMessage;->mReceiveTimestamp:D

    move-wide/from16 v26, v0

    iget-wide v0, v13, Lcom/android/providers/drm/NtpMessage;->mOriginateTimestamp:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    iget-wide v0, v13, Lcom/android/providers/drm/NtpMessage;->mTransmitTimestamp:D

    move-wide/from16 v28, v0

    sub-double v28, v28, v4

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000

    div-double v11, v26, v28

    .line 70
    .local v11, localClockOffset:D
    double-to-int v14, v11

    .line 72
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "local clock offset: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 73
    const/16 v22, 0x1

    .line 43
    .end local v3           #data:[B
    .end local v4           #destinationTimestamp:D
    .end local v9           #incoming:Ljava/net/DatagramPacket;
    .end local v11           #localClockOffset:D
    .end local v13           #msg:Lcom/android/providers/drm/NtpMessage;
    .end local v15           #outgoing:Ljava/net/DatagramPacket;
    .end local v20           #sentTime:J
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 30
    .end local v2           #attempts:I
    .end local v14           #offset:I
    .end local v17           #responseTime:J
    .end local v22           #serviceStatus:I
    .end local v24           #socket:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v7

    .line 31
    .local v7, e1:Ljava/net/UnknownHostException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 74
    .end local v7           #e1:Ljava/net/UnknownHostException;
    .restart local v2       #attempts:I
    .restart local v14       #offset:I
    .restart local v17       #responseTime:J
    .restart local v22       #serviceStatus:I
    .restart local v24       #socket:Ljava/net/DatagramSocket;
    :catch_1
    move-exception v8

    .line 76
    .local v8, ex:Ljava/io/InterruptedIOException;
    :try_start_4
    const-string v26, "Ntp"

    const-string v27, "InterruptedIOException caught, set offset as 2147483647"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 77
    const v14, 0x7fffffff

    goto :goto_2

    .line 93
    .end local v8           #ex:Ljava/io/InterruptedIOException;
    :cond_0
    if-eqz v24, :cond_3

    .line 94
    invoke-virtual/range {v24 .. v24}, Ljava/net/DatagramSocket;->close()V

    move-object/from16 v23, v24

    .line 98
    .end local v2           #attempts:I
    .end local v24           #socket:Ljava/net/DatagramSocket;
    .restart local v23       #socket:Ljava/net/DatagramSocket;
    :cond_1
    :goto_3
    return v14

    .line 80
    :catch_2
    move-exception v6

    .line 81
    .local v6, e:Ljava/net/NoRouteToHostException;
    :goto_4
    :try_start_5
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No route to host exception for address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", set offset as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7fffffff

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    const v14, 0x7fffffff

    .line 93
    if-eqz v23, :cond_1

    .line 94
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    .line 83
    .end local v6           #e:Ljava/net/NoRouteToHostException;
    :catch_3
    move-exception v6

    .line 85
    .local v6, e:Ljava/net/ConnectException;
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 86
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Connection exception for address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", set offset as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7fffffff

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    const v14, 0x7fffffff

    .line 93
    if-eqz v23, :cond_1

    .line 94
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    .line 88
    .end local v6           #e:Ljava/net/ConnectException;
    :catch_4
    move-exception v8

    .line 89
    .local v8, ex:Ljava/io/IOException;
    :goto_6
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 90
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IOException while polling address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", set offset as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7fffffff

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    const v14, 0x7fffffff

    .line 93
    if-eqz v23, :cond_1

    .line 94
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_3

    .line 93
    .end local v8           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v26

    :goto_7
    if-eqz v23, :cond_2

    .line 94
    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v26

    .line 93
    .end local v23           #socket:Ljava/net/DatagramSocket;
    .restart local v24       #socket:Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v26

    move-object/from16 v23, v24

    .end local v24           #socket:Ljava/net/DatagramSocket;
    .restart local v23       #socket:Ljava/net/DatagramSocket;
    goto :goto_7

    .line 88
    .end local v23           #socket:Ljava/net/DatagramSocket;
    .restart local v24       #socket:Ljava/net/DatagramSocket;
    :catch_5
    move-exception v8

    move-object/from16 v23, v24

    .end local v24           #socket:Ljava/net/DatagramSocket;
    .restart local v23       #socket:Ljava/net/DatagramSocket;
    goto :goto_6

    .line 83
    .end local v23           #socket:Ljava/net/DatagramSocket;
    .restart local v24       #socket:Ljava/net/DatagramSocket;
    :catch_6
    move-exception v6

    move-object/from16 v23, v24

    .end local v24           #socket:Ljava/net/DatagramSocket;
    .restart local v23       #socket:Ljava/net/DatagramSocket;
    goto :goto_5

    .line 80
    .end local v23           #socket:Ljava/net/DatagramSocket;
    .restart local v24       #socket:Ljava/net/DatagramSocket;
    :catch_7
    move-exception v6

    move-object/from16 v23, v24

    .end local v24           #socket:Ljava/net/DatagramSocket;
    .restart local v23       #socket:Ljava/net/DatagramSocket;
    goto/16 :goto_4

    .end local v23           #socket:Ljava/net/DatagramSocket;
    .restart local v2       #attempts:I
    .restart local v24       #socket:Ljava/net/DatagramSocket;
    :cond_3
    move-object/from16 v23, v24

    .end local v24           #socket:Ljava/net/DatagramSocket;
    .restart local v23       #socket:Ljava/net/DatagramSocket;
    goto/16 :goto_3
.end method
