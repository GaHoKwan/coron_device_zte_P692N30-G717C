.class Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;
.super Ljava/lang/Object;
.source "MMProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/MMProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMProfileWrapper"
.end annotation


# static fields
.field private static final MMPROFILE_FLAG_END:I = 0x2

.field private static final MMPROFILE_FLAG_EVENT_SEPARATOR:I = 0x8

.field private static final MMPROFILE_FLAG_PULSE:I = 0x4

.field private static final MMPROFILE_FLAG_START:I = 0x1

.field private static final MMP_ROOT_EVENT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doMMProfileEnableEvent(II)V
    .locals 0
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 1013
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileEnableEvent(II)V

    .line 1014
    return-void
.end method

.method public static doMMProfileEnableEventRecursive(II)V
    .locals 0
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 1016
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileEnableEventRecursive(II)V

    .line 1017
    return-void
.end method

.method public static doMMProfileFindEvent(ILjava/lang/String;)I
    .locals 1
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 1010
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileFindEvent(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static doMMProfileLog(II)V
    .locals 0
    .parameter "event"
    .parameter "type"

    .prologue
    .line 1022
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLog(II)V

    .line 1023
    return-void
.end method

.method public static doMMProfileLogEx(IIII)V
    .locals 0
    .parameter "event"
    .parameter "type"
    .parameter "data1"
    .parameter "data2"

    .prologue
    .line 1025
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLogEx(IIII)V

    .line 1026
    return-void
.end method

.method public static doMMProfileLogMetaString(IILjava/lang/String;)I
    .locals 1
    .parameter "event"
    .parameter "type"
    .parameter "str"

    .prologue
    .line 1028
    invoke-static {p0, p1, p2}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLogMetaString(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static doMMProfileLogMetaStringEx(IIIILjava/lang/String;)I
    .locals 1
    .parameter "event"
    .parameter "type"
    .parameter "data1"
    .parameter "data2"
    .parameter "str"

    .prologue
    .line 1031
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLogMetaStringEx(IIIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static doMMProfileQueryEnable(I)I
    .locals 1
    .parameter "event"

    .prologue
    .line 1019
    invoke-static {p0}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileQueryEnable(I)I

    move-result v0

    return v0
.end method

.method public static doMMProfileRegisterEvent(ILjava/lang/String;)I
    .locals 1
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 1007
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
