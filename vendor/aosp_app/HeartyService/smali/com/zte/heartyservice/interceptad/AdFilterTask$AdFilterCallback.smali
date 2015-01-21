.class public interface abstract Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;
.super Ljava/lang/Object;
.source "AdFilterTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/AdFilterTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdFilterCallback"
.end annotation


# virtual methods
.method public abstract onFilterCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDialog(Ljava/lang/String;)V
.end method
