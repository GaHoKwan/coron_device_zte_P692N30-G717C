.class public Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/widget/SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter "itemData"
    .parameter "itemType"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    .line 296
    iput p2, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->type:I

    .line 297
    return-void
.end method
