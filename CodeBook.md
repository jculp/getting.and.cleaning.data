# CodeBook for UCI HAR Dataset and Processing
## Dataset Information
A Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (listed below) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

| Activity Code | Descriptive Activity
-----------|-------------
| 1 | WALKING
| 2 | WALKING_UPSTAIRS
| 3 | WALKING_DOWNSTAIRS
| 4 | SITTING
| 5 | STANDING
| 6 | LAYING

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information
For each record in the dataset it is provided: 
 - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
 - Triaxial Angular velocity from the gyroscope. 
 - A 561-feature vector with time and frequency domain variables. 
 - Its activity label. 
 - An identifier of the subject who carried out the experiment.

The complete list of time and frequency domain variables is provided here.

| Measurement | Description | Measurement | Description
-----------|-------------|-------------|-------------
| 1 | tBodyAcc-mean()-X | 281 | fBodyAcc-sma()
| 2 | tBodyAcc-mean()-Y | 282 | fBodyAcc-energy()-X
| 3 | tBodyAcc-mean()-Z | 283 | fBodyAcc-energy()-Y
| 4 | tBodyAcc-std()-X | 284 | fBodyAcc-energy()-Z
| 5 | tBodyAcc-std()-Y | 285 | fBodyAcc-iqr()-X
| 6 | tBodyAcc-std()-Z | 286 | fBodyAcc-iqr()-Y
| 7 | tBodyAcc-mad()-X | 287 | fBodyAcc-iqr()-Z
| 8 | tBodyAcc-mad()-Y | 288 | fBodyAcc-entropy()-X
| 9 | tBodyAcc-mad()-Z | 289 | fBodyAcc-entropy()-Y
| 10 | tBodyAcc-max()-X | 290 | fBodyAcc-entropy()-Z
| 11 | tBodyAcc-max()-Y | 291 | fBodyAcc-maxInds-X
| 12 | tBodyAcc-max()-Z | 292 | fBodyAcc-maxInds-Y
| 13 | tBodyAcc-min()-X | 293 | fBodyAcc-maxInds-Z
| 14 | tBodyAcc-min()-Y | 294 | fBodyAcc-meanFreq()-X
| 15 | tBodyAcc-min()-Z | 295 | fBodyAcc-meanFreq()-Y
| 16 | tBodyAcc-sma() | 296 | fBodyAcc-meanFreq()-Z
| 17 | tBodyAcc-energy()-X | 297 | fBodyAcc-skewness()-X
| 18 | tBodyAcc-energy()-Y | 298 | fBodyAcc-kurtosis()-X
| 19 | tBodyAcc-energy()-Z | 299 | fBodyAcc-skewness()-Y
| 20 | tBodyAcc-iqr()-X | 300 | fBodyAcc-kurtosis()-Y
| 21 | tBodyAcc-iqr()-Y | 301 | fBodyAcc-skewness()-Z
| 22 | tBodyAcc-iqr()-Z | 302 | fBodyAcc-kurtosis()-Z
| 23 | tBodyAcc-entropy()-X | 303 | fBodyAcc-bandsEnergy()-1,8
| 24 | tBodyAcc-entropy()-Y | 304 | fBodyAcc-bandsEnergy()-9,16
| 25 | tBodyAcc-entropy()-Z | 305 | fBodyAcc-bandsEnergy()-17,24
| 26 | tBodyAcc-arCoeff()-X,1 | 306 | fBodyAcc-bandsEnergy()-25,32
| 27 | tBodyAcc-arCoeff()-X,2 | 307 | fBodyAcc-bandsEnergy()-33,40
| 28 | tBodyAcc-arCoeff()-X,3 | 308 | fBodyAcc-bandsEnergy()-41,48
| 29 | tBodyAcc-arCoeff()-X,4 | 309 | fBodyAcc-bandsEnergy()-49,56
| 30 | tBodyAcc-arCoeff()-Y,1 | 310 | fBodyAcc-bandsEnergy()-57,64
| 31 | tBodyAcc-arCoeff()-Y,2 | 311 | fBodyAcc-bandsEnergy()-1,16
| 32 | tBodyAcc-arCoeff()-Y,3 | 312 | fBodyAcc-bandsEnergy()-17,32
| 33 | tBodyAcc-arCoeff()-Y,4 | 313 | fBodyAcc-bandsEnergy()-33,48
| 34 | tBodyAcc-arCoeff()-Z,1 | 314 | fBodyAcc-bandsEnergy()-49,64
| 35 | tBodyAcc-arCoeff()-Z,2 | 315 | fBodyAcc-bandsEnergy()-1,24
| 36 | tBodyAcc-arCoeff()-Z,3 | 316 | fBodyAcc-bandsEnergy()-25,48
| 37 | tBodyAcc-arCoeff()-Z,4 | 317 | fBodyAcc-bandsEnergy()-1,8
| 38 | tBodyAcc-correlation()-X,Y | 318 | fBodyAcc-bandsEnergy()-9,16
| 39 | tBodyAcc-correlation()-X,Z | 319 | fBodyAcc-bandsEnergy()-17,24
| 40 | tBodyAcc-correlation()-Y,Z | 320 | fBodyAcc-bandsEnergy()-25,32
| 41 | tGravityAcc-mean()-X | 321 | fBodyAcc-bandsEnergy()-33,40
| 42 | tGravityAcc-mean()-Y | 322 | fBodyAcc-bandsEnergy()-41,48
| 43 | tGravityAcc-mean()-Z | 323 | fBodyAcc-bandsEnergy()-49,56
| 44 | tGravityAcc-std()-X | 324 | fBodyAcc-bandsEnergy()-57,64
| 45 | tGravityAcc-std()-Y | 325 | fBodyAcc-bandsEnergy()-1,16
| 46 | tGravityAcc-std()-Z | 326 | fBodyAcc-bandsEnergy()-17,32
| 47 | tGravityAcc-mad()-X | 327 | fBodyAcc-bandsEnergy()-33,48
| 48 | tGravityAcc-mad()-Y | 328 | fBodyAcc-bandsEnergy()-49,64
| 49 | tGravityAcc-mad()-Z | 329 | fBodyAcc-bandsEnergy()-1,24
| 50 | tGravityAcc-max()-X | 330 | fBodyAcc-bandsEnergy()-25,48
| 51 | tGravityAcc-max()-Y | 331 | fBodyAcc-bandsEnergy()-1,8
| 52 | tGravityAcc-max()-Z | 332 | fBodyAcc-bandsEnergy()-9,16
| 53 | tGravityAcc-min()-X | 333 | fBodyAcc-bandsEnergy()-17,24
| 54 | tGravityAcc-min()-Y | 334 | fBodyAcc-bandsEnergy()-25,32
| 55 | tGravityAcc-min()-Z | 335 | fBodyAcc-bandsEnergy()-33,40
| 56 | tGravityAcc-sma() | 336 | fBodyAcc-bandsEnergy()-41,48
| 57 | tGravityAcc-energy()-X | 337 | fBodyAcc-bandsEnergy()-49,56
| 58 | tGravityAcc-energy()-Y | 338 | fBodyAcc-bandsEnergy()-57,64
| 59 | tGravityAcc-energy()-Z | 339 | fBodyAcc-bandsEnergy()-1,16
| 60 | tGravityAcc-iqr()-X | 340 | fBodyAcc-bandsEnergy()-17,32
| 61 | tGravityAcc-iqr()-Y | 341 | fBodyAcc-bandsEnergy()-33,48
| 62 | tGravityAcc-iqr()-Z | 342 | fBodyAcc-bandsEnergy()-49,64
| 63 | tGravityAcc-entropy()-X | 343 | fBodyAcc-bandsEnergy()-1,24
| 64 | tGravityAcc-entropy()-Y | 344 | fBodyAcc-bandsEnergy()-25,48
| 65 | tGravityAcc-entropy()-Z | 345 | fBodyAccJerk-mean()-X
| 66 | tGravityAcc-arCoeff()-X,1 | 346 | fBodyAccJerk-mean()-Y
| 67 | tGravityAcc-arCoeff()-X,2 | 347 | fBodyAccJerk-mean()-Z
| 68 | tGravityAcc-arCoeff()-X,3 | 348 | fBodyAccJerk-std()-X
| 69 | tGravityAcc-arCoeff()-X,4 | 349 | fBodyAccJerk-std()-Y
| 70 | tGravityAcc-arCoeff()-Y,1 | 350 | fBodyAccJerk-std()-Z
| 71 | tGravityAcc-arCoeff()-Y,2 | 351 | fBodyAccJerk-mad()-X
| 72 | tGravityAcc-arCoeff()-Y,3 | 352 | fBodyAccJerk-mad()-Y
| 73 | tGravityAcc-arCoeff()-Y,4 | 353 | fBodyAccJerk-mad()-Z
| 74 | tGravityAcc-arCoeff()-Z,1 | 354 | fBodyAccJerk-max()-X
| 75 | tGravityAcc-arCoeff()-Z,2 | 355 | fBodyAccJerk-max()-Y
| 76 | tGravityAcc-arCoeff()-Z,3 | 356 | fBodyAccJerk-max()-Z
| 77 | tGravityAcc-arCoeff()-Z,4 | 357 | fBodyAccJerk-min()-X
| 78 | tGravityAcc-correlation()-X,Y | 358 | fBodyAccJerk-min()-Y
| 79 | tGravityAcc-correlation()-X,Z | 359 | fBodyAccJerk-min()-Z
| 80 | tGravityAcc-correlation()-Y,Z | 360 | fBodyAccJerk-sma()
| 81 | tBodyAccJerk-mean()-X | 361 | fBodyAccJerk-energy()-X
| 82 | tBodyAccJerk-mean()-Y | 362 | fBodyAccJerk-energy()-Y
| 83 | tBodyAccJerk-mean()-Z | 363 | fBodyAccJerk-energy()-Z
| 84 | tBodyAccJerk-std()-X | 364 | fBodyAccJerk-iqr()-X
| 85 | tBodyAccJerk-std()-Y | 365 | fBodyAccJerk-iqr()-Y
| 86 | tBodyAccJerk-std()-Z | 366 | fBodyAccJerk-iqr()-Z
| 87 | tBodyAccJerk-mad()-X | 367 | fBodyAccJerk-entropy()-X
| 88 | tBodyAccJerk-mad()-Y | 368 | fBodyAccJerk-entropy()-Y
| 89 | tBodyAccJerk-mad()-Z | 369 | fBodyAccJerk-entropy()-Z
| 90 | tBodyAccJerk-max()-X | 370 | fBodyAccJerk-maxInds-X
| 91 | tBodyAccJerk-max()-Y | 371 | fBodyAccJerk-maxInds-Y
| 92 | tBodyAccJerk-max()-Z | 372 | fBodyAccJerk-maxInds-Z
| 93 | tBodyAccJerk-min()-X | 373 | fBodyAccJerk-meanFreq()-X
| 94 | tBodyAccJerk-min()-Y | 374 | fBodyAccJerk-meanFreq()-Y
| 95 | tBodyAccJerk-min()-Z | 375 | fBodyAccJerk-meanFreq()-Z
| 96 | tBodyAccJerk-sma() | 376 | fBodyAccJerk-skewness()-X
| 97 | tBodyAccJerk-energy()-X | 377 | fBodyAccJerk-kurtosis()-X
| 98 | tBodyAccJerk-energy()-Y | 378 | fBodyAccJerk-skewness()-Y
| 99 | tBodyAccJerk-energy()-Z | 379 | fBodyAccJerk-kurtosis()-Y
| 100 | tBodyAccJerk-iqr()-X | 380 | fBodyAccJerk-skewness()-Z
| 101 | tBodyAccJerk-iqr()-Y | 381 | fBodyAccJerk-kurtosis()-Z
| 102 | tBodyAccJerk-iqr()-Z | 382 | fBodyAccJerk-bandsEnergy()-1,8
| 103 | tBodyAccJerk-entropy()-X | 383 | fBodyAccJerk-bandsEnergy()-9,16
| 104 | tBodyAccJerk-entropy()-Y | 384 | fBodyAccJerk-bandsEnergy()-17,24
| 105 | tBodyAccJerk-entropy()-Z | 385 | fBodyAccJerk-bandsEnergy()-25,32
| 106 | tBodyAccJerk-arCoeff()-X,1 | 386 | fBodyAccJerk-bandsEnergy()-33,40
| 107 | tBodyAccJerk-arCoeff()-X,2 | 387 | fBodyAccJerk-bandsEnergy()-41,48
| 108 | tBodyAccJerk-arCoeff()-X,3 | 388 | fBodyAccJerk-bandsEnergy()-49,56
| 109 | tBodyAccJerk-arCoeff()-X,4 | 389 | fBodyAccJerk-bandsEnergy()-57,64
| 110 | tBodyAccJerk-arCoeff()-Y,1 | 390 | fBodyAccJerk-bandsEnergy()-1,16
| 111 | tBodyAccJerk-arCoeff()-Y,2 | 391 | fBodyAccJerk-bandsEnergy()-17,32
| 112 | tBodyAccJerk-arCoeff()-Y,3 | 392 | fBodyAccJerk-bandsEnergy()-33,48
| 113 | tBodyAccJerk-arCoeff()-Y,4 | 393 | fBodyAccJerk-bandsEnergy()-49,64
| 114 | tBodyAccJerk-arCoeff()-Z,1 | 394 | fBodyAccJerk-bandsEnergy()-1,24
| 115 | tBodyAccJerk-arCoeff()-Z,2 | 395 | fBodyAccJerk-bandsEnergy()-25,48
| 116 | tBodyAccJerk-arCoeff()-Z,3 | 396 | fBodyAccJerk-bandsEnergy()-1,8
| 117 | tBodyAccJerk-arCoeff()-Z,4 | 397 | fBodyAccJerk-bandsEnergy()-9,16
| 118 | tBodyAccJerk-correlation()-X,Y | 398 | fBodyAccJerk-bandsEnergy()-17,24
| 119 | tBodyAccJerk-correlation()-X,Z | 399 | fBodyAccJerk-bandsEnergy()-25,32
| 120 | tBodyAccJerk-correlation()-Y,Z | 400 | fBodyAccJerk-bandsEnergy()-33,40
| 121 | tBodyGyro-mean()-X | 401 | fBodyAccJerk-bandsEnergy()-41,48
| 122 | tBodyGyro-mean()-Y | 402 | fBodyAccJerk-bandsEnergy()-49,56
| 123 | tBodyGyro-mean()-Z | 403 | fBodyAccJerk-bandsEnergy()-57,64
| 124 | tBodyGyro-std()-X | 404 | fBodyAccJerk-bandsEnergy()-1,16
| 125 | tBodyGyro-std()-Y | 405 | fBodyAccJerk-bandsEnergy()-17,32
| 126 | tBodyGyro-std()-Z | 406 | fBodyAccJerk-bandsEnergy()-33,48
| 127 | tBodyGyro-mad()-X | 407 | fBodyAccJerk-bandsEnergy()-49,64
| 128 | tBodyGyro-mad()-Y | 408 | fBodyAccJerk-bandsEnergy()-1,24
| 129 | tBodyGyro-mad()-Z | 409 | fBodyAccJerk-bandsEnergy()-25,48
| 130 | tBodyGyro-max()-X | 410 | fBodyAccJerk-bandsEnergy()-1,8
| 131 | tBodyGyro-max()-Y | 411 | fBodyAccJerk-bandsEnergy()-9,16
| 132 | tBodyGyro-max()-Z | 412 | fBodyAccJerk-bandsEnergy()-17,24
| 133 | tBodyGyro-min()-X | 413 | fBodyAccJerk-bandsEnergy()-25,32
| 134 | tBodyGyro-min()-Y | 414 | fBodyAccJerk-bandsEnergy()-33,40
| 135 | tBodyGyro-min()-Z | 415 | fBodyAccJerk-bandsEnergy()-41,48
| 136 | tBodyGyro-sma() | 416 | fBodyAccJerk-bandsEnergy()-49,56
| 137 | tBodyGyro-energy()-X | 417 | fBodyAccJerk-bandsEnergy()-57,64
| 138 | tBodyGyro-energy()-Y | 418 | fBodyAccJerk-bandsEnergy()-1,16
| 139 | tBodyGyro-energy()-Z | 419 | fBodyAccJerk-bandsEnergy()-17,32
| 140 | tBodyGyro-iqr()-X | 420 | fBodyAccJerk-bandsEnergy()-33,48
| 141 | tBodyGyro-iqr()-Y | 421 | fBodyAccJerk-bandsEnergy()-49,64
| 142 | tBodyGyro-iqr()-Z | 422 | fBodyAccJerk-bandsEnergy()-1,24
| 143 | tBodyGyro-entropy()-X | 423 | fBodyAccJerk-bandsEnergy()-25,48
| 144 | tBodyGyro-entropy()-Y | 424 | fBodyGyro-mean()-X
| 145 | tBodyGyro-entropy()-Z | 425 | fBodyGyro-mean()-Y
| 146 | tBodyGyro-arCoeff()-X,1 | 426 | fBodyGyro-mean()-Z
| 147 | tBodyGyro-arCoeff()-X,2 | 427 | fBodyGyro-std()-X
| 148 | tBodyGyro-arCoeff()-X,3 | 428 | fBodyGyro-std()-Y
| 149 | tBodyGyro-arCoeff()-X,4 | 429 | fBodyGyro-std()-Z
| 150 | tBodyGyro-arCoeff()-Y,1 | 430 | fBodyGyro-mad()-X
| 151 | tBodyGyro-arCoeff()-Y,2 | 431 | fBodyGyro-mad()-Y
| 152 | tBodyGyro-arCoeff()-Y,3 | 432 | fBodyGyro-mad()-Z
| 153 | tBodyGyro-arCoeff()-Y,4 | 433 | fBodyGyro-max()-X
| 154 | tBodyGyro-arCoeff()-Z,1 | 434 | fBodyGyro-max()-Y
| 155 | tBodyGyro-arCoeff()-Z,2 | 435 | fBodyGyro-max()-Z
| 156 | tBodyGyro-arCoeff()-Z,3 | 436 | fBodyGyro-min()-X
| 157 | tBodyGyro-arCoeff()-Z,4 | 437 | fBodyGyro-min()-Y
| 158 | tBodyGyro-correlation()-X,Y | 438 | fBodyGyro-min()-Z
| 159 | tBodyGyro-correlation()-X,Z | 439 | fBodyGyro-sma()
| 160 | tBodyGyro-correlation()-Y,Z | 440 | fBodyGyro-energy()-X
| 161 | tBodyGyroJerk-mean()-X | 441 | fBodyGyro-energy()-Y
| 162 | tBodyGyroJerk-mean()-Y | 442 | fBodyGyro-energy()-Z
| 163 | tBodyGyroJerk-mean()-Z | 443 | fBodyGyro-iqr()-X
| 164 | tBodyGyroJerk-std()-X | 444 | fBodyGyro-iqr()-Y
| 165 | tBodyGyroJerk-std()-Y | 445 | fBodyGyro-iqr()-Z
| 166 | tBodyGyroJerk-std()-Z | 446 | fBodyGyro-entropy()-X
| 167 | tBodyGyroJerk-mad()-X | 447 | fBodyGyro-entropy()-Y
| 168 | tBodyGyroJerk-mad()-Y | 448 | fBodyGyro-entropy()-Z
| 169 | tBodyGyroJerk-mad()-Z | 449 | fBodyGyro-maxInds-X
| 170 | tBodyGyroJerk-max()-X | 450 | fBodyGyro-maxInds-Y
| 171 | tBodyGyroJerk-max()-Y | 451 | fBodyGyro-maxInds-Z
| 172 | tBodyGyroJerk-max()-Z | 452 | fBodyGyro-meanFreq()-X
| 173 | tBodyGyroJerk-min()-X | 453 | fBodyGyro-meanFreq()-Y
| 174 | tBodyGyroJerk-min()-Y | 454 | fBodyGyro-meanFreq()-Z
| 175 | tBodyGyroJerk-min()-Z | 455 | fBodyGyro-skewness()-X
| 176 | tBodyGyroJerk-sma() | 456 | fBodyGyro-kurtosis()-X
| 177 | tBodyGyroJerk-energy()-X | 457 | fBodyGyro-skewness()-Y
| 178 | tBodyGyroJerk-energy()-Y | 458 | fBodyGyro-kurtosis()-Y
| 179 | tBodyGyroJerk-energy()-Z | 459 | fBodyGyro-skewness()-Z
| 180 | tBodyGyroJerk-iqr()-X | 460 | fBodyGyro-kurtosis()-Z
| 181 | tBodyGyroJerk-iqr()-Y | 461 | fBodyGyro-bandsEnergy()-1,8
| 182 | tBodyGyroJerk-iqr()-Z | 462 | fBodyGyro-bandsEnergy()-9,16
| 183 | tBodyGyroJerk-entropy()-X | 463 | fBodyGyro-bandsEnergy()-17,24
| 184 | tBodyGyroJerk-entropy()-Y | 464 | fBodyGyro-bandsEnergy()-25,32
| 185 | tBodyGyroJerk-entropy()-Z | 465 | fBodyGyro-bandsEnergy()-33,40
| 186 | tBodyGyroJerk-arCoeff()-X,1 | 466 | fBodyGyro-bandsEnergy()-41,48
| 187 | tBodyGyroJerk-arCoeff()-X,2 | 467 | fBodyGyro-bandsEnergy()-49,56
| 188 | tBodyGyroJerk-arCoeff()-X,3 | 468 | fBodyGyro-bandsEnergy()-57,64
| 189 | tBodyGyroJerk-arCoeff()-X,4 | 469 | fBodyGyro-bandsEnergy()-1,16
| 190 | tBodyGyroJerk-arCoeff()-Y,1 | 470 | fBodyGyro-bandsEnergy()-17,32
| 191 | tBodyGyroJerk-arCoeff()-Y,2 | 471 | fBodyGyro-bandsEnergy()-33,48
| 192 | tBodyGyroJerk-arCoeff()-Y,3 | 472 | fBodyGyro-bandsEnergy()-49,64
| 193 | tBodyGyroJerk-arCoeff()-Y,4 | 473 | fBodyGyro-bandsEnergy()-1,24
| 194 | tBodyGyroJerk-arCoeff()-Z,1 | 474 | fBodyGyro-bandsEnergy()-25,48
| 195 | tBodyGyroJerk-arCoeff()-Z,2 | 475 | fBodyGyro-bandsEnergy()-1,8
| 196 | tBodyGyroJerk-arCoeff()-Z,3 | 476 | fBodyGyro-bandsEnergy()-9,16
| 197 | tBodyGyroJerk-arCoeff()-Z,4 | 477 | fBodyGyro-bandsEnergy()-17,24
| 198 | tBodyGyroJerk-correlation()-X,Y | 478 | fBodyGyro-bandsEnergy()-25,32
| 199 | tBodyGyroJerk-correlation()-X,Z | 479 | fBodyGyro-bandsEnergy()-33,40
| 200 | tBodyGyroJerk-correlation()-Y,Z | 480 | fBodyGyro-bandsEnergy()-41,48
| 201 | tBodyAccMag-mean() | 481 | fBodyGyro-bandsEnergy()-49,56
| 202 | tBodyAccMag-std() | 482 | fBodyGyro-bandsEnergy()-57,64
| 203 | tBodyAccMag-mad() | 483 | fBodyGyro-bandsEnergy()-1,16
| 204 | tBodyAccMag-max() | 484 | fBodyGyro-bandsEnergy()-17,32
| 205 | tBodyAccMag-min() | 485 | fBodyGyro-bandsEnergy()-33,48
| 206 | tBodyAccMag-sma() | 486 | fBodyGyro-bandsEnergy()-49,64
| 207 | tBodyAccMag-energy() | 487 | fBodyGyro-bandsEnergy()-1,24
| 208 | tBodyAccMag-iqr() | 488 | fBodyGyro-bandsEnergy()-25,48
| 209 | tBodyAccMag-entropy() | 489 | fBodyGyro-bandsEnergy()-1,8
| 210 | tBodyAccMag-arCoeff()1 | 490 | fBodyGyro-bandsEnergy()-9,16
| 211 | tBodyAccMag-arCoeff()2 | 491 | fBodyGyro-bandsEnergy()-17,24
| 212 | tBodyAccMag-arCoeff()3 | 492 | fBodyGyro-bandsEnergy()-25,32
| 213 | tBodyAccMag-arCoeff()4 | 493 | fBodyGyro-bandsEnergy()-33,40
| 214 | tGravityAccMag-mean() | 494 | fBodyGyro-bandsEnergy()-41,48
| 215 | tGravityAccMag-std() | 495 | fBodyGyro-bandsEnergy()-49,56
| 216 | tGravityAccMag-mad() | 496 | fBodyGyro-bandsEnergy()-57,64
| 217 | tGravityAccMag-max() | 497 | fBodyGyro-bandsEnergy()-1,16
| 218 | tGravityAccMag-min() | 498 | fBodyGyro-bandsEnergy()-17,32
| 219 | tGravityAccMag-sma() | 499 | fBodyGyro-bandsEnergy()-33,48
| 220 | tGravityAccMag-energy() | 500 | fBodyGyro-bandsEnergy()-49,64
| 221 | tGravityAccMag-iqr() | 501 | fBodyGyro-bandsEnergy()-1,24
| 222 | tGravityAccMag-entropy() | 502 | fBodyGyro-bandsEnergy()-25,48
| 223 | tGravityAccMag-arCoeff()1 | 503 | fBodyAccMag-mean()
| 224 | tGravityAccMag-arCoeff()2 | 504 | fBodyAccMag-std()
| 225 | tGravityAccMag-arCoeff()3 | 505 | fBodyAccMag-mad()
| 226 | tGravityAccMag-arCoeff()4 | 506 | fBodyAccMag-max()
| 227 | tBodyAccJerkMag-mean() | 507 | fBodyAccMag-min()
| 228 | tBodyAccJerkMag-std() | 508 | fBodyAccMag-sma()
| 229 | tBodyAccJerkMag-mad() | 509 | fBodyAccMag-energy()
| 230 | tBodyAccJerkMag-max() | 510 | fBodyAccMag-iqr()
| 231 | tBodyAccJerkMag-min() | 511 | fBodyAccMag-entropy()
| 232 | tBodyAccJerkMag-sma() | 512 | fBodyAccMag-maxInds
| 233 | tBodyAccJerkMag-energy() | 513 | fBodyAccMag-meanFreq()
| 234 | tBodyAccJerkMag-iqr() | 514 | fBodyAccMag-skewness()
| 235 | tBodyAccJerkMag-entropy() | 515 | fBodyAccMag-kurtosis()
| 236 | tBodyAccJerkMag-arCoeff()1 | 516 | fBodyBodyAccJerkMag-mean()
| 237 | tBodyAccJerkMag-arCoeff()2 | 517 | fBodyBodyAccJerkMag-std()
| 238 | tBodyAccJerkMag-arCoeff()3 | 518 | fBodyBodyAccJerkMag-mad()
| 239 | tBodyAccJerkMag-arCoeff()4 | 519 | fBodyBodyAccJerkMag-max()
| 240 | tBodyGyroMag-mean() | 520 | fBodyBodyAccJerkMag-min()
| 241 | tBodyGyroMag-std() | 521 | fBodyBodyAccJerkMag-sma()
| 242 | tBodyGyroMag-mad() | 522 | fBodyBodyAccJerkMag-energy()
| 243 | tBodyGyroMag-max() | 523 | fBodyBodyAccJerkMag-iqr()
| 244 | tBodyGyroMag-min() | 524 | fBodyBodyAccJerkMag-entropy()
| 245 | tBodyGyroMag-sma() | 525 | fBodyBodyAccJerkMag-maxInds
| 246 | tBodyGyroMag-energy() | 526 | fBodyBodyAccJerkMag-meanFreq()
| 247 | tBodyGyroMag-iqr() | 527 | fBodyBodyAccJerkMag-skewness()
| 248 | tBodyGyroMag-entropy() | 528 | fBodyBodyAccJerkMag-kurtosis()
| 249 | tBodyGyroMag-arCoeff()1 | 529 | fBodyBodyGyroMag-mean()
| 250 | tBodyGyroMag-arCoeff()2 | 530 | fBodyBodyGyroMag-std()
| 251 | tBodyGyroMag-arCoeff()3 | 531 | fBodyBodyGyroMag-mad()
| 252 | tBodyGyroMag-arCoeff()4 | 532 | fBodyBodyGyroMag-max()
| 253 | tBodyGyroJerkMag-mean() | 533 | fBodyBodyGyroMag-min()
| 254 | tBodyGyroJerkMag-std() | 534 | fBodyBodyGyroMag-sma()
| 255 | tBodyGyroJerkMag-mad() | 535 | fBodyBodyGyroMag-energy()
| 256 | tBodyGyroJerkMag-max() | 536 | fBodyBodyGyroMag-iqr()
| 257 | tBodyGyroJerkMag-min() | 537 | fBodyBodyGyroMag-entropy()
| 258 | tBodyGyroJerkMag-sma() | 538 | fBodyBodyGyroMag-maxInds
| 259 | tBodyGyroJerkMag-energy() | 539 | fBodyBodyGyroMag-meanFreq()
| 260 | tBodyGyroJerkMag-iqr() | 540 | fBodyBodyGyroMag-skewness()
| 261 | tBodyGyroJerkMag-entropy() | 541 | fBodyBodyGyroMag-kurtosis()
| 262 | tBodyGyroJerkMag-arCoeff()1 | 542 | fBodyBodyGyroJerkMag-mean()
| 263 | tBodyGyroJerkMag-arCoeff()2 | 543 | fBodyBodyGyroJerkMag-std()
| 264 | tBodyGyroJerkMag-arCoeff()3 | 544 | fBodyBodyGyroJerkMag-mad()
| 265 | tBodyGyroJerkMag-arCoeff()4 | 545 | fBodyBodyGyroJerkMag-max()
| 266 | fBodyAcc-mean()-X | 546 | fBodyBodyGyroJerkMag-min()
| 267 | fBodyAcc-mean()-Y | 547 | fBodyBodyGyroJerkMag-sma()
| 268 | fBodyAcc-mean()-Z | 548 | fBodyBodyGyroJerkMag-energy()
| 269 | fBodyAcc-std()-X | 549 | fBodyBodyGyroJerkMag-iqr()
| 270 | fBodyAcc-std()-Y | 550 | fBodyBodyGyroJerkMag-entropy()
| 271 | fBodyAcc-std()-Z | 551 | fBodyBodyGyroJerkMag-maxInds
| 272 | fBodyAcc-mad()-X | 552 | fBodyBodyGyroJerkMag-meanFreq()
| 273 | fBodyAcc-mad()-Y | 553 | fBodyBodyGyroJerkMag-skewness()
| 274 | fBodyAcc-mad()-Z | 554 | fBodyBodyGyroJerkMag-kurtosis()
| 275 | fBodyAcc-max()-X | 555 | angle(tBodyAccMean,gravity)
| 276 | fBodyAcc-max()-Y | 556 | angle(tBodyAccJerkMean),gravityMean)
| 277 | fBodyAcc-max()-Z | 557 | angle(tBodyGyroMean,gravityMean)
| 278 | fBodyAcc-min()-X | 558 | angle(tBodyGyroJerkMean,gravityMean)
| 279 | fBodyAcc-min()-Y | 559 | angle(X,gravityMean)
| 280 | fBodyAcc-min()-Z | 560 | angle(Y,gravityMean)
|  |  | 561 | angle(Z,gravityMean)


## Relevant Papers
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Citation Request
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
