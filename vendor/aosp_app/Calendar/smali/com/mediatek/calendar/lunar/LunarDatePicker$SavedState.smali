.class Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendar/lunar/LunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1075
    new-instance v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1060
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mYear:I

    .line 1061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mMonth:I

    .line 1062
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mDay:I

    .line 1063
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/calendar/lunar/LunarDatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1050
    iput p2, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mYear:I

    .line 1051
    iput p3, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mMonth:I

    .line 1052
    iput p4, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mDay:I

    .line 1053
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/mediatek/calendar/lunar/LunarDatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1037
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1037
    iget v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1037
    iget v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1037
    iget v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1067
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1068
    iget v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    iget v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    iget v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    return-void
.end method
