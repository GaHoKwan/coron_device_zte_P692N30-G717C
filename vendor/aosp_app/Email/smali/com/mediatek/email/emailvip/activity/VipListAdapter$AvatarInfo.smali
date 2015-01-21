.class public Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
.super Ljava/lang/Object;
.source "VipListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvatarInfo"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mDisplayName:Ljava/lang/String;

.field mLookUpUri:Ljava/lang/String;

.field mPhotoId:J

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
