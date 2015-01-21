.class public Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsGroupArrayData"
.end annotation


# instance fields
.field private mSimIndex:I

.field private mSimIndexPhoneOrSim:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I

    return v0
.end method


# virtual methods
.method public getmSimIndex()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I

    return v0
.end method

.method public getmSimIndexPhoneOrSim()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I

    return v0
.end method

.method public initData(II)Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;
    .locals 0
    .parameter "simIndex"
    .parameter "mSimIndexPhoneorSim"

    .prologue
    .line 669
    iput p1, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I

    .line 670
    iput p2, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I

    .line 671
    return-object p0
.end method
