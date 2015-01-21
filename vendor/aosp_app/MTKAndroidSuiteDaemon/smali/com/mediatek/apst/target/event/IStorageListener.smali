.class public interface abstract Lcom/mediatek/apst/target/event/IStorageListener;
.super Ljava/lang/Object;
.source "IStorageListener.java"


# static fields
.field public static final AVAILABLE:Ljava/lang/String; = "available"

.field public static final TOTAL:Ljava/lang/String; = "total"


# virtual methods
.method public abstract onExternalStorageChanged(Lcom/mediatek/apst/target/event/Event;)V
.end method

.method public abstract onInternalStorageChanged(Lcom/mediatek/apst/target/event/Event;)V
.end method
