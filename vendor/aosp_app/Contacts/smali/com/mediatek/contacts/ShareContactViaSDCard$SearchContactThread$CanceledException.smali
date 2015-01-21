.class Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread$CanceledException;
.super Ljava/lang/Exception;
.source "ShareContactViaSDCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanceledException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread$CanceledException;->this$1:Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
