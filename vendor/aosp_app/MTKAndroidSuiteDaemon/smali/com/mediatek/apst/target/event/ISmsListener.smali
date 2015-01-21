.class public interface abstract Lcom/mediatek/apst/target/event/ISmsListener;
.super Ljava/lang/Object;
.source "ISmsListener.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AFTER_TIME_OF:Ljava/lang/String; = "after_time_of"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final BY_SELF:Ljava/lang/String; = "by_self"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final SENT:Ljava/lang/String; = "sent"

.field public static final SMS:Ljava/lang/String; = "sms"

.field public static final SMS_ID:Ljava/lang/String; = "sms_id"


# virtual methods
.method public abstract onSmsInserted(Lcom/mediatek/apst/target/event/Event;)V
.end method

.method public abstract onSmsReceived(Lcom/mediatek/apst/target/event/Event;)V
.end method

.method public abstract onSmsSent(Lcom/mediatek/apst/target/event/Event;)V
.end method
