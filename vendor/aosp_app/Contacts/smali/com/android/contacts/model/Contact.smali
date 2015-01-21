.class public Lcom/android/contacts/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/Contact$Status;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private mBlockVideoCall:Z

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mIndicatePhoneOrSimContact:I

.field private mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSdnContact:I

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private mSimIndex:I

.field private mSlot:I

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 513
    const-class v0, Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/Contact;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2
    .parameter "requestedUri"
    .parameter "uri"
    .parameter "lookupUri"
    .parameter "directoryId"
    .parameter "lookupKey"
    .parameter "id"
    .parameter "nameRawContactId"
    .parameter "displayNameSource"
    .parameter "photoId"
    .parameter "photoUri"
    .parameter "displayName"
    .parameter "altDisplayName"
    .parameter "phoneticName"
    .parameter "starred"
    .parameter "presence"
    .parameter "sendToVoicemail"
    .parameter "customRingtone"
    .parameter "isUserProfile"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/model/Contact;->mSlot:I

    .line 515
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 516
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    .line 517
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    .line 518
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    .line 150
    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 152
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 153
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 154
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 155
    iput-wide p4, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 156
    iput-object p6, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 157
    iput-wide p7, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 161
    iput-wide p9, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 162
    iput p11, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 163
    iput-wide p12, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 164
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 168
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 169
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 171
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 172
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 173
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZIZ)V
    .locals 1
    .parameter "requestedUri"
    .parameter "uri"
    .parameter "lookupUri"
    .parameter "directoryId"
    .parameter "lookupKey"
    .parameter "id"
    .parameter "nameRawContactId"
    .parameter "displayNameSource"
    .parameter "photoId"
    .parameter "photoUri"
    .parameter "displayName"
    .parameter "altDisplayName"
    .parameter "phoneticName"
    .parameter "starred"
    .parameter "presence"
    .parameter "sendToVoicemail"
    .parameter "customRingtone"
    .parameter "isUserProfile"
    .parameter "isSdnContact"
    .parameter "blockVideoCall"

    .prologue
    .line 528
    invoke-direct/range {p0 .. p22}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 531
    move/from16 v0, p23

    iput v0, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    .line 532
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    .line 533
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 5
    .parameter "requestedUri"
    .parameter "status"
    .parameter "exception"

    .prologue
    const/4 v0, -0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput v0, p0, Lcom/android/contacts/model/Contact;->mSlot:I

    .line 515
    iput v0, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 516
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    .line 517
    iput v0, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    .line 518
    iput v2, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    .line 101
    sget-object v0, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 105
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 106
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 107
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 108
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 109
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 110
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 111
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 112
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 113
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 114
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 115
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 116
    iput v2, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 117
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 118
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 122
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 123
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 124
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 125
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 126
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    .line 130
    invoke-direct {p0}, Lcom/android/contacts/model/Contact;->initSIMMembers()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V
    .locals 2
    .parameter "requestedUri"
    .parameter "from"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput v0, p0, Lcom/android/contacts/model/Contact;->mSlot:I

    .line 515
    iput v0, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 516
    iput-boolean v1, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    .line 517
    iput v0, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    .line 518
    iput v1, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    .line 177
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 179
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 180
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 181
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 182
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 183
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 184
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 185
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 186
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 187
    iget v0, p2, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 188
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 189
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 190
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 191
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 192
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 193
    iget-boolean v0, p2, Lcom/android/contacts/model/Contact;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 194
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 195
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 196
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 197
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 198
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 200
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 201
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 202
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 203
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 204
    iget v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    .line 206
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 208
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    .line 209
    iget-boolean v0, p2, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 210
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 211
    iget-boolean v0, p2, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    .line 214
    invoke-direct {p0, p2}, Lcom/android/contacts/model/Contact;->initSIMMembers(Lcom/android/contacts/model/Contact;)V

    .line 216
    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/model/Contact;
    .locals 2
    .parameter "requestedUri"
    .parameter "exception"

    .prologue
    .line 135
    new-instance v0, Lcom/android/contacts/model/Contact;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 3
    .parameter "requestedUri"

    .prologue
    .line 139
    new-instance v0, Lcom/android/contacts/model/Contact;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private initSIMMembers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 539
    iput v0, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 540
    iput v0, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    .line 541
    iput-boolean v1, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    .line 542
    iput v1, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    .line 543
    return-void
.end method

.method private initSIMMembers(Lcom/android/contacts/model/Contact;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 546
    sget-object v0, Lcom/android/contacts/model/Contact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSIMMembers begin mIndicatePhoneOrSimContact , mSimIndex , mBlockVideoCall, mIsSdnContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget v0, p1, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 549
    iget v0, p1, Lcom/android/contacts/model/Contact;->mSimIndex:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    .line 551
    iget v0, p1, Lcom/android/contacts/model/Contact;->mSlot:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mSlot:I

    .line 552
    iget-boolean v0, p1, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    .line 553
    iget v0, p1, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    .line 554
    sget-object v0, Lcom/android/contacts/model/Contact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSIMMembers end mIndicatePhoneOrSimContact , mSimIndex , mBlockVideoCall, mIsSdnContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method


# virtual methods
.method public createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 270
    .local v0, rawContactslistList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 619
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    return-wide v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v5, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 443
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot extract content values from an aggregated contact"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 447
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContact;

    .line 448
    .local v3, rawContact:Lcom/android/contacts/model/RawContact;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/DataItem;

    .line 450
    .local v0, dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v0           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    :cond_1
    iget-wide v5, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    if-eqz v5, :cond_2

    .line 456
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v2, photo:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v5, "data15"

    iget-object v6, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 459
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v2           #photo:Landroid/content/ContentValues;
    :cond_2
    return-object v4
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-wide v3

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 408
    .local v2, rawContact:Lcom/android/contacts/model/RawContact;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 409
    .local v0, accountType:Lcom/android/contacts/model/account/AccountType;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    return-wide v0
.end method

.method public getIndicate()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    return v0
.end method

.method public getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRawContacts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSimIndex()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    return v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/contacts/model/Contact;->mSlot:I

    return v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    return v0
.end method

.method public getStatuses()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getStreamItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isBlockVideoCall()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mBlockVideoCall:Z

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInternationDialNumber()Z
    .locals 2

    .prologue
    .line 612
    iget v0, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSdnContacts()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 608
    iget v1, p0, Lcom/android/contacts/model/Contact;->mIsSdnContact:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    return v0
.end method

.method public isWritableContact(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/Contact;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "displayName"
    .parameter "directoryType"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "exportSupport"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 226
    iput-object p4, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 227
    iput p5, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    .line 228
    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, groups:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/GroupMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 506
    return-void
.end method

.method public setIndicate(I)V
    .locals 0
    .parameter "indicate"

    .prologue
    .line 569
    iput p1, p0, Lcom/android/contacts/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 570
    return-void
.end method

.method setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, accountTypes:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/account/AccountType;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 502
    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0
    .parameter "photoBinaryData"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    .line 232
    return-void
.end method

.method setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, rawContacts:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 494
    return-void
.end method

.method public setSimIndex(I)V
    .locals 0
    .parameter "simIndex"

    .prologue
    .line 576
    iput p1, p0, Lcom/android/contacts/model/Contact;->mSimIndex:I

    .line 577
    return-void
.end method

.method public setSlot(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 597
    iput p1, p0, Lcom/android/contacts/model/Contact;->mSlot:I

    .line 598
    return-void
.end method

.method setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, statuses:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 498
    return-void
.end method

.method setStreamItems(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, streamItems:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/util/StreamItemEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
