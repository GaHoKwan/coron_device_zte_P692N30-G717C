.class public interface abstract Lcom/mediatek/apst/target/event/IMmsListener;
.super Ljava/lang/Object;
.source "IMmsListener.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AFTER_TIME_OF:Ljava/lang/String; = "after_time_of"

.field public static final BY_SELF:Ljava/lang/String; = "by_self"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final MMS:Ljava/lang/String; = "mms"

.field public static final MMS_ID:Ljava/lang/String; = "mms_id"

.field public static final SENT:Ljava/lang/String; = "sent"


# virtual methods
.method public abstract onMmsInserted(Lcom/mediatek/apst/target/event/Event;)V
.end method

.method public abstract onMmsReceived(Lcom/mediatek/apst/target/event/Event;)V
.end method

.method public abstract onMmsSent(Lcom/mediatek/apst/target/event/Event;)V
.end method
