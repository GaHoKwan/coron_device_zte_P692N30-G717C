.class Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper$SimColor;
.super Ljava/lang/Object;
.source "CallLogSimInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimColor"
.end annotation


# instance fields
.field mDrawableSimColor:Landroid/graphics/drawable/Drawable;

.field mInsertSimColor:I

.field final synthetic this$0:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper$SimColor;->this$0:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper$SimColor;->mInsertSimColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper$SimColor;-><init>(Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;)V

    return-void
.end method
