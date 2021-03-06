/*
* Copyright (c) 2020 Ubique Innovation AG <https://www.ubique.ch>
*
* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, You can obtain one at https://mozilla.org/MPL/2.0/.
*
* SPDX-License-Identifier: MPL-2.0
*/

import Foundation
import ExposureNotification

public protocol ActivityDelegate: AnyObject {
    func syncCompleted(totalRequest: Int, errors: [DP3TTracingError])
    func fakeRequestCompleted(result: Result<Int, DP3TNetworkingError>)
    func outstandingKeyUploadCompleted(result: Result<Int, DP3TNetworkingError>)
    func exposureSummaryLoaded(summary: ENExposureDetectionSummary)
}
