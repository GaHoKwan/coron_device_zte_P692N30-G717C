.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactReplaceSqlStatement;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContactReplaceSqlStatement"
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x10

.field public static final CUSTOM_RINGTONE:I = 0x5

.field public static final HAS_PHONE_NUMBER:I = 0x9

.field public static final INDEX_IN_SIM:I = 0xc

.field public static final INDICATE_PHONE_SIM:I = 0xb

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, lookup, indicate_phone_or_sim_contact, index_in_sim, send_to_voicemail_vt, send_to_voicemail_sip, is_sdn_contact)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field public static final IS_SDN_CONTACTS:I = 0xf

.field public static final LAST_TIME_CONTACTED:I = 0x6

.field public static final LOOKUP_KEY:I = 0xa

.field public static final NAME_RAW_CONTACT_ID:I = 0x1

.field public static final PHOTO_FILE_ID:I = 0x3

.field public static final PHOTO_ID:I = 0x2

.field public static final SEND_TO_VOICEMAIL:I = 0x4

.field public static final SEND_TO_VOICEMAIL_SIP:I = 0xe

.field public static final SEND_TO_VOICEMAIL_VT:I = 0xd

.field public static final STARRED:I = 0x8

.field public static final TIMES_CONTACTED:I = 0x7

.field public static final UPDATE_SQL:Ljava/lang/String; = "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, lookup=?, indicate_phone_or_sim_contact=?, index_in_sim=?, send_to_voicemail_vt=?, send_to_voicemail_sip=? , is_sdn_contact=?  WHERE _id=?"
