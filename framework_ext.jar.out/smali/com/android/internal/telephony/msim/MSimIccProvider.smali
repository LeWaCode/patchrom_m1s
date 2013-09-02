.class public Lcom/android/internal/telephony/msim/MSimIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MSimIccProvider.java"


# static fields
.field private static final ADN_SUB1:I = 0x1

.field private static final ADN_SUB2:I = 0x2

.field private static final DBG:Z = false

.field private static final FDN_SUB1:I = 0x3

.field private static final FDN_SUB2:I = 0x4

.field private static final SDN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MSimIccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "adn"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "adn_sub2"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "fdn"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "fdn_sub2"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 352
    const/4 v8, 0x0

    .line 360
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 362
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    .line 363
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 372
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v8

    .line 368
    :catch_0
    move-exception v1

    goto :goto_0

    .line 366
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 406
    const/4 v8, 0x0

    .line 409
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 411
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    .line 412
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 421
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v8

    .line 417
    :catch_0
    move-exception v1

    goto :goto_0

    .line 415
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 382
    const/4 v8, 0x0

    .line 385
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 387
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 388
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 397
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v8

    .line 393
    :catch_0
    move-exception v1

    goto :goto_0

    .line 391
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 183
    const/4 v8, 0x0

    .line 187
    .local v8, subscription:I
    sget-object v2, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 188
    .local v10, match:I
    packed-switch v10, :pswitch_data_0

    .line 210
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cannot insert into URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :pswitch_0
    const/4 v8, 0x0

    .line 191
    const/16 v3, 0x6f3a

    .line 215
    .local v3, efType:I
    :goto_0
    const/4 v4, 0x0

    .line 216
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 217
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 218
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 220
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 221
    .local v15, tokens:[Ljava/lang/String;
    array-length v11, v15

    .line 223
    .local v11, n:I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_5

    .line 224
    aget-object v13, v15, v11

    .line 227
    .local v13, param:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, pair:[Ljava/lang/String;
    array-length v2, v12

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    .line 230
    const-string v2, "MSimIccProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v11           #n:I
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v15           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/4 v8, 0x1

    .line 196
    const/16 v3, 0x6f3a

    .line 197
    .restart local v3       #efType:I
    goto :goto_0

    .line 200
    .end local v3           #efType:I
    :pswitch_2
    const/4 v8, 0x0

    .line 201
    const/16 v3, 0x6f3b

    .line 202
    .restart local v3       #efType:I
    goto :goto_0

    .line 205
    .end local v3           #efType:I
    :pswitch_3
    const/4 v8, 0x1

    .line 206
    const/16 v3, 0x6f3b

    .line 207
    .restart local v3       #efType:I
    goto :goto_0

    .line 234
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v12       #pair:[Ljava/lang/String;
    .restart local v13       #param:Ljava/lang/String;
    .restart local v15       #tokens:[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 237
    .local v16, val:Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 239
    :cond_2
    const-string v2, "number"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 241
    :cond_3
    const-string v2, "emails"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    const/4 v6, 0x0

    goto :goto_1

    .line 244
    :cond_4
    const-string v2, "pin2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 249
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v16           #val:Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    const/4 v2, 0x0

    .line 262
    :goto_2
    return v2

    .line 253
    :cond_6
    const/4 v2, 0x3

    if-eq v3, v2, :cond_7

    const/4 v2, 0x4

    if-ne v3, v2, :cond_8

    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 254
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v2, p0

    .line 257
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/msim/MSimIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    .line 258
    .local v14, success:Z
    if-nez v14, :cond_9

    .line 259
    const/4 v2, 0x0

    goto :goto_2

    .line 262
    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 92
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    .local v5, pin2:Ljava/lang/String;
    const/4 v6, 0x0

    .line 114
    .local v6, subscription:I
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 115
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_0
    const/4 v6, 0x0

    .line 118
    const/16 v1, 0x6f3a

    .line 138
    .local v1, efType:I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, tag:Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, number:Ljava/lang/String;
    move-object v0, p0

    .line 141
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/msim/MSimIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 143
    .local v10, success:Z
    if-nez v10, :cond_0

    .line 177
    :goto_1
    return-object v4

    .line 122
    .end local v1           #efType:I
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v10           #success:Z
    :pswitch_1
    const/4 v6, 0x1

    .line 123
    const/16 v1, 0x6f3a

    .line 124
    .restart local v1       #efType:I
    goto :goto_0

    .line 128
    .end local v1           #efType:I
    :pswitch_2
    const/16 v1, 0x6f3b

    .line 129
    .restart local v1       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    const-string v0, "subscription"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 131
    goto :goto_0

    .line 147
    .restart local v2       #tag:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v10       #success:Z
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "content://iccmsim/"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v7, buf:Ljava/lang/StringBuilder;
    packed-switch v8, :pswitch_data_1

    .line 167
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, resultUri:Landroid/net/Uri;
    move-object v4, v9

    .line 177
    goto :goto_1

    .line 150
    .end local v9           #resultUri:Landroid/net/Uri;
    :pswitch_3
    const-string v0, "adn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 154
    :pswitch_4
    const-string v0, "adn_sub2/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    :pswitch_5
    const-string v0, "fdn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 162
    :pswitch_6
    const-string v0, "fdn_sub2/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"
    .parameter "subscription"

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 319
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook_msim"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v4

    .line 321
    .local v4, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v4, :cond_0

    .line 322
    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getAdnRecordsInEf(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    .end local v4           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 331
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 332
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 334
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 335
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 340
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    const-string v5, "MSimIccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 326
    :catch_0
    move-exception v5

    goto :goto_0

    .line 324
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 426
    const-string v0, "MSimIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/16 v4, 0x6f3b

    const/16 v3, 0x6f3a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_4
    const/16 v0, 0x6f49

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, pin2:Ljava/lang/String;
    const/4 v8, 0x0

    .line 273
    .local v8, subscription:I
    sget-object v1, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 274
    .local v10, match:I
    packed-switch v10, :pswitch_data_0

    .line 292
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot insert into URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :pswitch_0
    const/4 v8, 0x0

    .line 277
    const/16 v2, 0x6f3a

    .line 296
    .local v2, efType:I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 299
    .local v9, emails:[Ljava/lang/String;
    const-string v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, newTag:Ljava/lang/String;
    const-string v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, newNumber:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, newEmails:[Ljava/lang/String;
    move-object v1, p0

    .line 303
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    .line 306
    .local v12, success:Z
    if-nez v12, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 310
    :goto_1
    return v1

    .line 280
    .end local v2           #efType:I
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #newTag:Ljava/lang/String;
    .end local v6           #newNumber:Ljava/lang/String;
    .end local v9           #emails:[Ljava/lang/String;
    .end local v11           #newEmails:[Ljava/lang/String;
    .end local v12           #success:Z
    :pswitch_1
    const/4 v8, 0x1

    .line 281
    const/16 v2, 0x6f3a

    .line 282
    .restart local v2       #efType:I
    goto :goto_0

    .line 286
    .end local v2           #efType:I
    :pswitch_2
    const/16 v2, 0x6f3b

    .line 287
    .restart local v2       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    const-string v1, "subscription"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 289
    goto :goto_0

    .line 310
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #newTag:Ljava/lang/String;
    .restart local v6       #newNumber:Ljava/lang/String;
    .restart local v9       #emails:[Ljava/lang/String;
    .restart local v11       #newEmails:[Ljava/lang/String;
    .restart local v12       #success:Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
