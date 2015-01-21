.class final Lcom/android/mms/data/RecipientIdCache$3;
.super Ljava/lang/Thread;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/RecipientIdCache;->insertCanonicalAddressInDb(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p2, p0, Lcom/android/mms/data/RecipientIdCache$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/mms/data/RecipientIdCache$3;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mms/data/RecipientIdCache$3;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->access$000()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/RecipientIdCache$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 318
    return-void
.end method
