.class Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerChange"
.end annotation


# instance fields
.field id:J

.field read:Z

.field final synthetic this$1:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;JZ)V
    .locals 0
    .parameter
    .parameter "_id"
    .parameter "_read"

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$ServerChange;->this$1:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-wide p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$ServerChange;->id:J

    .line 838
    iput-boolean p4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$ServerChange;->read:Z

    .line 839
    return-void
.end method
