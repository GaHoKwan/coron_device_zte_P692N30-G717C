.class interface abstract Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;
.super Ljava/lang/Object;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ISmsManager"
.end annotation


# virtual methods
.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
.end method
